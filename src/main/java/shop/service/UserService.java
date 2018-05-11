package shop.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.UserDAO;
import shop.entities.User;

@Service
public class UserService {
	@Autowired
	private UserDAO userDao;

	public boolean insertUser(User user) {
		return userDao.insertUser(user);
	}

	public ArrayList<User> getAllUser() {
		return userDao.getAllUser();
	}
	public User getUser(String email, String password) {
		return userDao.getUser(email, password);
		
	}
}
