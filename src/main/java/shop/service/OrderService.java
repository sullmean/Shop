package shop.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.OrderDAO;
import shop.entities.Order;

@Service
public class OrderService {

	@Autowired
	OrderDAO orderDAO;

	public ArrayList<Order> getAllOrder() {
		return orderDAO.getAllOrder();
	}

	public boolean updateOrder(Order order) {
		return orderDAO.updateOrder(order);
	}

	public Order findOrderById(long orderId) {
		return orderDAO.findOrderByID(orderId);
	}
	
	public boolean save(Order order) {
		return orderDAO.save(order);
	}
}
