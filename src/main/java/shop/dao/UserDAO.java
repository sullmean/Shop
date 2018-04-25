package shop.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import shop.entities.User;
import shop.model.HibernateUtil;

@Repository("userDao")
public class UserDAO {
	public User saveOrUpdate(User user) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();
		session.saveOrUpdate(user);
		transaction.commit();
		return user;
	}
}
