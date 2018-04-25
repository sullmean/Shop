package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.entities.User;
import shop.service.UserService;

@Controller
@RequestMapping(value = "/account")
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String account(ModelMap model) {
		User user = new User();
		user.setUserName("abc");
		user.setUserEmail("abc123");
		model.addAttribute("user", user);
		return "account";
	}
	
	@RequestMapping(value = "/new", method = RequestMethod.POST)
	public String newAccount(@ModelAttribute("user") User user) {
		userService.save(user);
		return "index";
	}
}
