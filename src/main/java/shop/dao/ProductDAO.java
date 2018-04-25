package shop.dao;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import shop.entities.Product;
import shop.model.HibernateUtil;

@Repository
public class ProductDAO {
	//lấy danh sách sp theo mã danh mục
	@SuppressWarnings("unchecked")
	public ArrayList<Product> getProductByCategoryID(long categoryID) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("from Product where categoryID = :categoryID");
		query.setLong("categoryID", categoryID);
		ArrayList<Product> list = (ArrayList<Product>) query.list();
		transaction.commit();
		return list;
	}

	//lấy random 6 sp
	@SuppressWarnings("unchecked")
	public ArrayList<Product> getproductRandom() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("from Product order by rand()");
		query.setMaxResults(6);
		ArrayList<Product> list = (ArrayList<Product>) query.list();
		transaction.commit();
		return list;
	}

	public static void main(String[] args) {
		System.out.println(new ProductDAO().getProductByCategoryID(2).size());
	}
}
