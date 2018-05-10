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

	@RequestMapping(value = "/manager-bill", method = RequestMethod.GET)
	public String vieManagerBill() {
		return "/admin/manager-bill";
	}

	@RequestMapping(value = "/update_tthoadon", method = RequestMethod.GET)
	public String update_tthoadon() {
		return "/admin/update_tthoadon";
	}
}
