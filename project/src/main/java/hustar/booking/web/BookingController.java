package hustar.booking.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookingController {
	@RequestMapping("/booking/list.do")
	public String list()  throws Exception{
		return "/booking/list";
	}
	
	@RequestMapping("/booking/mypage.do")
	public String mypage()  throws Exception{
		return "/booking/mypage";
	}
	
	@RequestMapping("/booking/view.do")
	public String view()  throws Exception{
		return "/booking/view";
	}
}
