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
@RequestMapping(value = "/admin/manager_account")
public class AdminUserController {
	@Autowired
	private UserService userService;

	@RequestMapping(method = RequestMethod.GET)
	public String vieManagerAccount(ModelMap mm) {
		mm.put("listUser", userService.getAllUser());
		return "/admin/manager_account";
	}

	// add
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String insertUser(ModelMap mm) {
		mm.put("newUser", new User());
		return "/admin/insert_account";
	}

	// lưu
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveUser(ModelMap mm, @ModelAttribute(value = "newUser") User user) {
		userService.insertUser(user);
		mm.put("listUser", userService.getAllUser());
		return "/admin/manager_account";
	}

}
