package shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = { "/admin", "/admin/index" })
public class AdminController {

	// view trang chủ admin
	@RequestMapping(method = RequestMethod.GET)
	public String vieAdmin() {
		return "/admin/index";
	}

//	// for 403 access denied page
//	@RequestMapping(value = "/403", method = RequestMethod.GET)
//	public ModelAndView accesssDenied() {
//
//		ModelAndView model = new ModelAndView();
//
//		// check if user is login
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		if (!(auth instanceof AnonymousAuthenticationToken)) {
//			UserDetails userDetail = (UserDetails) auth.getPrincipal();
//			model.addObject("username", userDetail.getUsername());
//		}
//
//		model.setViewName("403");
//		return model;
//	}
}
