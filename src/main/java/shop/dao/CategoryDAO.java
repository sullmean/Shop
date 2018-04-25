package shop.dao;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import shop.entities.Category;
import shop.model.HibernateUtil;

@Repository
public class CategoryDAO {
	@SuppressWarnings("unchecked")
	public ArrayList<Category> getAllcategory() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("from Category");
		ArrayList<Category> list = (ArrayList<Category>) query.list();
		transaction.commit();
		return list;
	}

	public static void main(String[] args) {
		System.out.println(new CategoryDAO().getAllcategory().get(0));
	}
}
