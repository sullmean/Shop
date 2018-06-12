package shop.dao;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import shop.entities.Order;
import shop.model.HibernateUtil;

@Repository
public class OrderDAO {

	@SuppressWarnings("unchecked")
	public ArrayList<Order> getAllOrder() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("from Order");
		ArrayList<Order> list = (ArrayList<Order>) query.list();
		transaction.commit();
		return list;
	}

	// sửa
	public boolean updateOrder(Order order) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			Transaction transaction = session.beginTransaction();
			session.update(order);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public Order findOrderByID(long orderId) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			Transaction transaction = session.beginTransaction();
			Order order = (Order) session.get(Order.class, orderId);
			transaction.commit();
			return order;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public boolean save(Order order) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			Transaction transaction = session.beginTransaction();
			session.save(order);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
