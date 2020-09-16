package com.springmvc.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.springmvc.model.CreateRules;

import com.springmvc.service.UserService;
@Controller
public class PaymentRulesController {
	  @Autowired
	  public UserService userService;
	  @RequestMapping(value = "/createRule", method = RequestMethod.GET)
	  public ModelAndView createRulePage(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("createRule");
	    mav.addObject("createRule", new CreateRules());
	    return mav;
	    
	  }
	  @RequestMapping(value = "/createRuleProcess", method = RequestMethod.POST)
	  public ModelAndView addRules(HttpServletRequest request, HttpServletResponse response,
	  @ModelAttribute("createRule") CreateRules createRule) {
	  userService.createRule(createRule);
	  return new ModelAndView("rule", "ruleName", createRule.getRuleName());
	  }
	  
	  @RequestMapping(value = "/phyproduct", method = RequestMethod.GET)
		public String Page() {
			return "physicalProduct";
		}
	  
	  @RequestMapping(value = "/book", method = RequestMethod.GET)
		public String Page1() {
			return "Book";
		}
	  @RequestMapping(value = "/membership", method = RequestMethod.GET)
		public String Page2() {
			return "memeberShip";
		}
	  @RequestMapping(value = "/mUpgrade", method = RequestMethod.GET)
		public String Page3() {
			return "upgradeMembership";
		}
	  @RequestMapping(value = "/upgrade", method = RequestMethod.GET)
		public String Page4() {
			return "memberOrupgrade";
		}
	  @RequestMapping(value = "/ski", method = RequestMethod.GET)
		public String Page5() {
			return "LearningSki";
		}
	  @RequestMapping(value = "/prodBook", method = RequestMethod.GET)
		public String Page6() {
			return "phyprodORBook";
		}
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
}