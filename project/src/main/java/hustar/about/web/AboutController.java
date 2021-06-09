package hustar.about.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AboutController {
	@RequestMapping("/about/intro.do")
	public String intro() throws Exception{
		return "/about/intro";
	}
}
