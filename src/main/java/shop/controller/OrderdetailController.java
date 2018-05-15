package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.service.OrderdetailService;

@Controller
@RequestMapping(value = "/admin/manager_chiTiet")
public class OrderdetailController {
	@Autowired
	OrderdetailService orderDetailService;

	// view trang qli orderdetail
	@RequestMapping(value = "/{orderId}", method = RequestMethod.GET)
	public String updateImage(ModelMap mm, @PathVariable(value = "orderId") long orderId) {
		mm.put("orderDetail", orderDetailService.getOrderdetailByOrderID(orderId));
		return "/admin/manager_chiTiet";
	}

}
