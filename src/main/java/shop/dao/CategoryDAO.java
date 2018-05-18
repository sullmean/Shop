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
		Query query = session.createQuery("from Category c where c.disabled = false");
		ArrayList<Category> list = (ArrayList<Category>) query.list();
		transaction.commit();
		return list;
	}

	// thêm
	public boolean insertCategory(Category category) {
		try {
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			Transaction transaction = session.beginTransaction();
			session.save(category);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	// sửa
	public boolean updateCategory(Category category) {
		try {
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			Transaction transaction = session.beginTransaction();
			session.update(category);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public Category findCategoryByID(long categoryId) {
		try {
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			Transaction transaction = session.beginTransaction();
			Category category = (Category) session.get(Category.class, categoryId);
			transaction.commit();
			return category;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static void main(String[] args) {
//		System.out.println(new CategoryDAO().getAllcategory().get(0).getCategoryName());
//		System.out.println(new CategoryDAO().findCategoryByID(1).getCategoryName());
//		System.out.println(new CategoryDAO().updateCategory(new Category(1,"asdfghhfghji",false)));
	}

}
