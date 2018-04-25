package shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.UserDAO;
import shop.entities.User;

@Service("userService")
public class UserService {
	@Autowired
	private UserDAO userDao;
	
	public User save(User user) {
		return userDao.saveOrUpdate(user);
	}
}
