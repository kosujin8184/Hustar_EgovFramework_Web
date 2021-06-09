package hustar.bbs.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import egovframework.com.cmm.service.CommonService;
import egovframework.com.cmm.util.EgovProperties;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import hustar.bbs.service.NoticeVO;
import hustar.member.service.MemberVO;
import hustar.util.FileUtil;

@Controller
public class NoticeController {
	
	
	private static final String NOTICE_UPLOAD_PATH=EgovProperties.getProperty("Globals.fileStorePath") + "notice";
	
	
	//리소스를 통해 객체할당하고 mappers로 부터 DB값 java로 사용가능
	@Resource(name = "commonService")
	CommonService commonService;
	
	@Resource(name = "jsonView")
	MappingJackson2JsonView jsonView;
	
	///////////////////////////////////////////////////////////////////////////////////////////
	@RequestMapping("/bbs/notice_list.do")
	public String notice_list(Model model, NoticeVO searchVO)  throws Exception{
		
		System.out.println("searchKeyword = " + searchVO.getSearchKeyword());
		
		//페이지 나누기 위해 정해진 룰이다. 이렇게 보통 많이 씀.
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());	//현재 페이지
		paginationInfo.setRecordCountPerPage(searchVO.getRecordCountPerPage());	//한페이당 몇개표시 할건가
		paginationInfo.setPageSize(searchVO.getPageSize());
		
		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchVO.setPageSize(paginationInfo.getPageSize());
		
		int recordCount = commonService.selectListTotCnt(searchVO, null, null, "noticeDAO.selecNoticeListCnt");
		paginationInfo.setTotalRecordCount(recordCount);//전체 행 값이 몇개인지 알려주는 그래서 위에서 DB로부터 값 불러와야함.
		
		
		List<NoticeVO> noticeVOList = (List<NoticeVO>)commonService.selectList(searchVO, null, null, "noticeDAO.selecNoticeList");
		
		model.addAttribute("noticeVOList", noticeVOList);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("searchVO", searchVO);
		
		
		return "/bbs/notice_list";
	}
	
	
	@RequestMapping("/bbs/notice_view.do")
	public String notice_view(NoticeVO searchVO, Model model)  throws Exception{
		
		NoticeVO noticeVO = (NoticeVO)commonService.selectView(searchVO, null, null, "noticeDAO.selectNoticeView");
		
		model.addAttribute("noticeVO", noticeVO);
		
		return "/bbs/notice_view";
	}
	
	@RequestMapping("/bbs/notice_write.do")
	public String notice_write(Model model)  throws Exception{
		
		model.addAttribute("mode", "write");
		
		return "/bbs/notice_write";
	}
	
	@RequestMapping("/bbs/notice_write_action.do")
	public String notice_write_action(MultipartFile uploadFile, NoticeVO noticeVO, Model model, HttpSession session, String mode, RedirectAttributes redirectAttributes)  throws Exception{
		
		System.out.println("subject = " + noticeVO.getSubject());
		System.out.println("contents = " + noticeVO.getContents());
		
		MemberVO loginVO =  (MemberVO)session.getAttribute("login");
		
		
		//로그인이 안됐다면~
		if(loginVO == null) {
			redirectAttributes.addFlashAttribute("msg", "로그인이 필요합니다");
			return "redirect:/member/login.do";
		}
		
		
		noticeVO.setWriter(loginVO.getName());	//작성자는 현재 로그인한 사람이기때문에 MemberVO로 부터 읽어온다. 그리고 나서 쿼리에서 #{writer}작성
		
		// ex) sfsadsadsa_dog.jpg
		String filename = FileUtil.saveFile(uploadFile, NOTICE_UPLOAD_PATH);
		if(filename != null){
			
			noticeVO.setFilename(filename);
			
			//arr[] = filename.split("_") -> 배열에 들어간다.
			//arr[0] = "sa-dsada-sdasd"
			//arr[1] = "김도연.jpg"
			String oriFilename = filename.split("_")[1];	//원래 파일이름을 가져온다.
			noticeVO.setOriFilename(oriFilename);	//저장한 파일이름과 원래 파일이름이 VO에 담긴다.
		}
		
		
		//mode: write, modify
		if("write".equals(mode)) {
			commonService.insert(noticeVO, null, null, "noticeDAO.insertNotice");
		}else {
			commonService.update(noticeVO, null, null, "noticeDAO.updateNotice");
		}
		
		return "redirect:/bbs/notice_list.do";
	}
	
	
	@RequestMapping("/bbs/notice_modify.do")
	public String notice_modify(NoticeVO searchVO, Model model)  throws Exception{
		
		
		
		NoticeVO noticeVO = (NoticeVO)commonService.selectView(searchVO, null, null, "noticeDAO.selectNoticeView");
		
		System.out.println("subject = " + noticeVO.getSubject());
		System.out.println("contents = " + noticeVO.getContents());
		
		model.addAttribute("noticeVO", noticeVO);
		
		model.addAttribute("mode", "modify");
		
		return "/bbs/notice_write";
	}
	
	
	
	@RequestMapping("/bbs/notice_delete.do")
	public String notice_delete(NoticeVO noticeVO) throws Exception{
		
		System.out.println("seq = " + noticeVO.getSeq());
		
		commonService.delete(noticeVO, null, null, "noticeDAO.deleteNotice");
		
		return "redirect:/bbs/notice_list.do";
	}
	
	
	@RequestMapping("/bbs/notice_downloadFile.do")
	public void notice_downloadFile(NoticeVO searchVO, HttpServletRequest request, HttpServletResponse response) throws Exception {
		NoticeVO noticeVO = (NoticeVO)commonService.selectView(searchVO, null, null, "noticeDAO.selectNoticeView");
		
		String filename = noticeVO.getFilename();
		if(filename == null) {
			return ;
		}
		
		String filePath = NOTICE_UPLOAD_PATH + "/" + noticeVO.getFilename();
		
		FileUtil.downFile(request, response, filePath, noticeVO.getOriFilename());
	}
	
	
	@RequestMapping("/bbs/notice_deleteFile.do")
	public ModelAndView notice_deleteFile(NoticeVO searchVO, Model model) throws Exception{
		
		NoticeVO fileVO =  (NoticeVO)commonService.selectView(searchVO, null, null, "noticeDAO.selectNoticeView");
		
		String filePath = NOTICE_UPLOAD_PATH + "/" + fileVO.getFilename();
		if(FileUtil.deleteFile(filePath) == true) {
			
			NoticeVO noticeVO = new NoticeVO();
			noticeVO.setSeq(searchVO.getSeq());
			noticeVO.setFilename("");
			noticeVO.setOriFilename("");
			
			commonService.update(noticeVO, null, null, "noticeDAO.updateNotice");
			
			model.addAttribute("success", true);
			
			
		}else {
			model.addAttribute("success", false);
		}
		
		return new ModelAndView(jsonView);
	}
	
	
	///////////////////////////////////////////////////////////////////////////////////////////
	@RequestMapping("/bbs/free_list.do")
	public String free_list()  throws Exception{
		return "/bbs/free_list";
	}
	
	@RequestMapping("/bbs/free_view.do")
	public String free_view()  throws Exception{
		return "/bbs/free_view";
	}
	
	@RequestMapping("/bbs/free_write.do")
	public String free_write()  throws Exception{
		return "/bbs/free_write";
	}
	
	///////////////////////////////////////////////////////////////////////////////////////////
	@RequestMapping("/bbs/gallery_list.do")
	public String gallery_list()  throws Exception{
		return "/bbs/gallery_list";
	}
	
	@RequestMapping("/bbs/gallery_view.do")
	public String gallery_view()  throws Exception{
		return "/bbs/gallery_view";
	}
	
	@RequestMapping("/bbs/gallery_write.do")
	public String gallery_write()  throws Exception{
		return "/bbs/gallery_write";
	}
}
