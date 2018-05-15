package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.entities.Order;
import shop.service.OrderService;

@Controller
@RequestMapping(value = "/admin/manager-bill")
public class OrderController {
	@Autowired
	OrderService orderService;

	// view trang qli order
	@RequestMapping(method = RequestMethod.GET)
	public String manage_order(ModelMap mm) {
		mm.put("listOrder", orderService.getAllOrder());
		return "/admin/manager-bill";
	}

	// find
	@RequestMapping(value = "/update_order/{orderId}", method = RequestMethod.GET)
	public String updateImage(ModelMap mm, @PathVariable(value = "orderId") long orderId) {
		mm.put("order", orderService.findOrderById(orderId));
		mm.put("listOrder", orderService.getAllOrder());
		return "/admin/update_bill";
	}

	// update1
	@RequestMapping(value = "/updateOrder1", method = RequestMethod.POST)
	public String updateOrder1(ModelMap mm, @ModelAttribute(value = "order") Order order) {
		orderService.updateOrder(order);
		mm.put("listImage", orderService.getAllOrder());
		return "/admin/manager-bill";
	}
}
