package shop.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.OrderdetailDAO;
import shop.entities.Orderdetail;

@Service
public class OrderdetailService {
	@Autowired
	OrderdetailDAO orderDetailDAO;

	public ArrayList<Orderdetail> getOrderdetailByOrderID(long order) {
		return orderDetailDAO.getOrderdetailByOrderID(order);
	}

}
