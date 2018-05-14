package shop.dao;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import shop.entities.Image;
import shop.model.HibernateUtil;

@Repository
public class ImageDAO {
	@SuppressWarnings("unchecked")
	public ArrayList<Image> getAllImage() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("from Image");
		ArrayList<Image> list = (ArrayList<Image>) query.list();
		transaction.commit();
		return list;
	}

	// thêm
	public boolean insertImage(Image image) {
		try {
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			Transaction transaction = session.beginTransaction();
			session.save(image);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	// sửa
	public boolean updateImage(Image image) {
		try {
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			Transaction transaction = session.beginTransaction();
			session.update(image);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public Image findImageByID(long imageId) {
		try {
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			Transaction transaction = session.beginTransaction();
			Image image = (Image) session.get(Image.class, imageId);
			transaction.commit();
			return image;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
