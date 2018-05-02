package shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	@RequestMapping(method = RequestMethod.GET)
	public String vieAdmin() {
		return "/admin/index";
	}

	@RequestMapping(value = "/manager_category", method = RequestMethod.GET)
	public String vieManagerCategory() {
		return "/admin/manager_category";
	}

	@RequestMapping(value = "/manager_product", method = RequestMethod.GET)
	public String vieManagerProduct() {
		return "/admin/manager_product";
	}

	@RequestMapping(value = "/manager_account", method = RequestMethod.GET)
	public String vieManagerAccount() {
		return "/admin/manager_account";
	}

	@RequestMapping(value = "/manager-bill", method = RequestMethod.GET)
	public String vieManagerBill() {
		return "/admin/manager-bill";
	}

	@RequestMapping(value = "/insert_category", method = RequestMethod.GET)
	public String insert_category() {
		return "/admin/insert_category";
	}
	
	@RequestMapping(value = "/insert_product", method = RequestMethod.GET)
	public String insert_product() {
		return "/admin/insert_product";
	}
	@RequestMapping(value = "/insert_account", method = RequestMethod.GET)
	public String insert_account() {
		return "/admin/insert_account";
	}
	@RequestMapping(value = "/update_category", method = RequestMethod.GET)
	public String update_category() {
		return "/admin/update_category";
	}
	@RequestMapping(value = "/update_product", method = RequestMethod.GET)
	public String update_product() {
		return "/admin/update_product";
	}
	@RequestMapping(value = "/update_tthoadon", method = RequestMethod.GET)
	public String update_tthoadon() {
		return "/admin/update_tthoadon";
	}
}
