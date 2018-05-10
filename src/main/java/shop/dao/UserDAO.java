package shop.dao;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import shop.entities.User;
import shop.model.HibernateUtil;

@Repository
public class UserDAO {
	// lấy all user
	@SuppressWarnings("unchecked")
	public ArrayList<User> getAllUser() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("from User");
		ArrayList<User> listUser = (ArrayList<User>) query.list();
		transaction.commit();
		return listUser;
	}

	// thêm
	public boolean insertUser(User user) {
		try {
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			Transaction transaction = session.beginTransaction();
			session.save(user);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
