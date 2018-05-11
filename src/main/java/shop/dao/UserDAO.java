package shop.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
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

	public User getUser(String email, String password) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();
		Criteria criteria = session.createCriteria(User.class);
		criteria.add(Restrictions.eq("userEmail", email));
		criteria.add(Restrictions.eq("userPass", password));
		List<User> users = criteria.list();
		transaction.commit();
		if (!users.isEmpty()) {
			return users.get(0);
		}
		return null;
	}
}
