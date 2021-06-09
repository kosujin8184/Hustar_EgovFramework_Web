package hustar.member.web;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import egovframework.com.cmm.service.CommonService;
import hustar.member.service.MemberVO;

@Controller
public class MemberController {
	
	//리소스를 통해 객체할당하고 mappers로 부터 DB값 java로 사용가능
	@Resource(name = "commonService")
	CommonService commonService;
	
	
	@Resource(name = "jsonView")
	MappingJackson2JsonView jsonView;
	

	@RequestMapping("/member/login.do")
	public String login() throws Exception {
		return "/member/login";
	}
	
	@RequestMapping("/member/join.do")
	public String join(HttpServletRequest request, Model model) throws Exception{
		
		
		String pass = "1234";
		//String encpass = BCrypt.hashpw(pass, BCrypt.gensalt());//hashpw(평문,salt값)
		//System.out.println("encpass = " + encpass);
		boolean success = BCrypt.checkpw(pass, "$2a$10$auq0u/FHin9922c8nQP42eIWMqPaISTIk0iAza3bpw6br9kWwxMtS"); //checkpw(평문, 변경된값)
		System.out.println("success = " + success);
		
		
		
		Map<String, ?> inputflashMap = RequestContextUtils.getInputFlashMap(request);
		
		if(inputflashMap != null) {
			//클라이언트에게 전달하기 위해사용하는 model객체
			model.addAttribute("msg", inputflashMap.get("msg"));
			System.out.println("msg = " + inputflashMap.get("msg"));
		}
		
		return "/member/join";
	}
	
	
	//회원가입
	//DB에 입력하기 위한 컨트롤러. 중요!!!!!!!!!!!
	@RequestMapping("/member/joinInsert.do")	//joinInsert.do로 화면에 주소띄우기
	public String joinInsert(@ModelAttribute("memberVO") MemberVO memberVO,
			RedirectAttributes redirectAttributes) throws Exception//모든 컨트롤러는 throws해야 예외처리됨.
	{
		
		//화면에 있는 값들을 받기위한 VO설정 hustar.member.service -> MemberVO로부터 값을 읽어온다.
		
		//콘솔에 찍어보기
			System.out.println("id = " + memberVO.getId());
			System.out.println("password = " + memberVO.getPassword());
			System.out.println("name = " + memberVO.getName());
			System.out.println("phone = " + memberVO.getPhone());
			
			
			int cnt = commonService.selectListTotCnt(memberVO, null, null, "memberDAO.selectMemberCnt");	//중복 검사 하기위한~ 
																											//Member_SQL_mysql에서 불러옴
			System.out.println("cnt = " + cnt);
			
			//ID가 중복 된다면 메시지 출력
			if(cnt > 0) {
				redirectAttributes.addFlashAttribute("msg", "이미 가입된 ID입니다.");
			}else {
				String encpass = BCrypt.hashpw(memberVO.getPassword(), BCrypt.gensalt());//hashpw(평문,salt값) 패스워드 암호화하기
				memberVO.setPassword(encpass); //암호화된 password 입력
				
				
				//실제 t_member DB 테이블에 insert!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! sqlmap -> Member_SQL_Mysql.xml로!!!!
				commonService.insert(memberVO, null, null, "memberDAO.insertMember"); // "memberDAO.insertMember"는 Member_SQL_mysql.xml에 설정
				redirectAttributes.addFlashAttribute("msg", "회원가입에 성공하셨습니다.");	//join.do의 스크립트로 보낸다.
			}
			
	
			//forward와 redirect의 차이(redirect의 경우 다른 컨트롤러를 불러온다.)
			//return "forward:/member/join.do";
			//redirect를 통해 중복입력 막아야해.
			return "redirect:/member/join.do";	// /member/join.jsp를 반환한다. 하지만 다른 화면으로 돌려줘야 새로 join이 안됨. 그래서 redirect시켜 위쪽의 join.do로
	}
		
	
	
	@RequestMapping("/member/checkId.do")
	public ModelAndView checkId(ModelMap model,@ModelAttribute("memberVO") MemberVO memberVO) throws Exception {
		
		
		int cnt = commonService.selectListTotCnt(memberVO, null, null, "memberDAO.selectMemberCnt");	//중복 검사 하기위한~ ID가 memberDAO.selectMemberCnt
																										//Member_SQL_mysql에서 불러옴
		//ID가 중복 된다면 메시지 출력
		if(cnt > 0) {
			//클라이언트로 보여주기 위한 model.addAttribute
			//join.jsp로 넘어간다.
			model.addAttribute("duplicate", true);
		}else {
			//클라이언트로 보여주기 위한 model.addAttribute
			//join.jsp로 넘어간다.
			model.addAttribute("duplicate", false);
		}
			
		return new ModelAndView(jsonView);
	}
	
	
	
	
	//로그인 부분========================================================================================================================
	@RequestMapping("/member/actionLogin.do")
	public String actionLogin(@ModelAttribute("memberVO") MemberVO memberVO) throws Exception{
		
		MemberVO loginVO = (MemberVO)commonService.selectView(memberVO, null, null, "memberDAO.selectMemberView");
		
		if(loginVO != null) {
			
			if(BCrypt.checkpw(memberVO.getPassword(), loginVO.getPassword()) == true) {
				return "redirect:/index.do";
			}else {
				//비밀번호 불 일치		
			}
			
		}else {
			//아이디 존재하지 않음
		}
		
		return "redirect:/member/login.do";
	}
	
	
	@RequestMapping("/member/actionLogout.do")
	   public String actionLogout() throws Exception{
	      RequestAttributes requestAttribute = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
	      requestAttribute.setAttribute("login",null,RequestAttributes.SCOPE_SESSION);
	      
	      return "redirect:/member/login.do"; //로그인 화면으로 direct
	   }
	   
	
	
	   
	 @RequestMapping("/member/actionLoginAsync.do")
	 public ModelAndView actionLoginAsyc(ModelMap model, String id, String password) throws Exception{
	   
	      MemberVO memberVO =new MemberVO();
	      
	      memberVO.setId(id);
	      memberVO.setPassword(password);
	      
	      MemberVO loginVO=(MemberVO) commonService.selectView(memberVO, null, null,"memberDAO.selectMemberView");
	      
	      
	      if(loginVO != null) {
	    	  if(BCrypt.checkpw(memberVO.getPassword(), loginVO.getPassword()) == true) {
	    		  HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
	    		  request.getSession().setAttribute("login", loginVO);
	    		  
	    		  model.addAttribute("login", "true");
	    	  }else {
	    		  model.addAttribute("login", "false");
	    	  }
	      }else {
	    	  model.addAttribute("login", "false");
	      }
	      
	      return new ModelAndView(jsonView); 
	   }
	   

	
	
	
}
