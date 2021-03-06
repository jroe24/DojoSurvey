package com.jacobroe.DojoSurvey;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpSession;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String index() {
		return "jsp/survey.jsp";
	}
	
	@RequestMapping(value="/result", method=RequestMethod.POST)
	public String survey(@RequestParam(value="name") String name, @RequestParam(value="location") String location, @RequestParam(value="language") String language, @RequestParam(value="comment") String comment, HttpSession session) {
		session.setAttribute("name", name);
		session.setAttribute("location", location);
		session.setAttribute("language", language);
		session.setAttribute("comment", comment);
		return "redirect:/result";	
	}	
	
	@RequestMapping("/result")
	public String results() {
		return "jsp/results.jsp";
	}
	
}