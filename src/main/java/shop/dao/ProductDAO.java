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
	// lấy danh sách sp theo mã danh mục
	@SuppressWarnings("unchecked")
	public ArrayList<Product> getProductByCategoryID(long category) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("from Product where category = :category");
		query.setLong("category", category);
		ArrayList<Product> list = (ArrayList<Product>) query.list();
		transaction.commit();
		return list;
	}

	// lấy random 6 sp
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

	@SuppressWarnings("unchecked")
	public ArrayList<Product> getAllProduct() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("from Product p where p.productState=false");
		ArrayList<Product> listProduct = (ArrayList<Product>) query.list();
		transaction.commit();
		return listProduct;
	}

	// thêm
	public boolean insertProduct(Product product) {
		try {
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			Transaction transaction = session.beginTransaction();
			session.save(product);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	// sửa
	public boolean updateProduct(Product product) {
		try {
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			Transaction transaction = session.beginTransaction();
			session.update(product);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public Product findProductByID(long productId) {
		try {
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			Transaction transaction = session.beginTransaction();
			Product product = (Product) session.get(Product.class, productId);
			transaction.commit();
			return product;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static void main(String[] args) {
//		System.out.println(new ProductDAO().getProductByCategoryID(2).size());
//		System.out.println(new ProductDAO().getAllProduct().size());
		System.out.println(new ProductDAO().findProductByID(1).getProductName());
	}
}
