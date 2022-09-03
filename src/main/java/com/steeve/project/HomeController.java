package com.steeve.project;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.steeve.project.dto.SalesUserInfo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	

	
	  @GetMapping("/jeunFront")
	    public String jeunFront(){
	        return "jeunFront";
	    }

	    @PostMapping("/postjeunFront")
	    @ResponseBody
	    public SalesUserInfo postJeunFront(HttpServletRequest request, HttpSession session){
	        SalesUserInfo user= new SalesUserInfo();
	    	
	        user.setName("�ڵ�����");
	    	user.setRegion("����");
	    	
	    	logger.info(user.getName());


	        return user;
	    }
	@GetMapping("/salesajax")
	public String salesjaxax(){
		return "salesajax";
	}
	
}
