package shop.dao;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import shop.entities.OrderDetail;
import shop.model.HibernateUtil;

@Repository
public class OrderdetailDAO {
	// lấy ds chi tiết theo mã hóa đơn
	@SuppressWarnings("unchecked")
	public ArrayList<OrderDetail> getOrderdetailByOrderID(long order) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("from Orderdetail where order = :order");
		query.setLong("order", order);
		ArrayList<OrderDetail> list = (ArrayList<OrderDetail>) query.list();
		transaction.commit();
		return list;
	}
}
