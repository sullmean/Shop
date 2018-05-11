package shop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.entities.User;
import shop.service.UserService;

@Controller
@RequestMapping(value = "account")
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping(method = RequestMethod.GET)
	public String account(ModelMap model) {
		User user = new User();
		model.addAttribute("user", user);
		return "account";
	}

	@RequestMapping(value = "/new", method = RequestMethod.POST)
	public String newAccount(@ModelAttribute("user") User user) {
		userService.insertUser(user);
		return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("user") User user, ModelMap modelMap, HttpSession session) {
		User real = userService.getUser(user.getUserEmail(), user.getUserPass());
		if (real != null) {
			session.setAttribute("user", real);
			return "index";
		} else {
			modelMap.addAttribute("error", "Duyen khung");
			return "account";
		}
	}

	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		return "index";

	}

}
