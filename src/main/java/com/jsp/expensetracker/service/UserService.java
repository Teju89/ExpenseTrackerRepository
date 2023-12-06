package com.jsp.expensetracker.service;
import java.io.InputStream;

import com.jsp.expensetracker.entity.User;
public interface UserService {
	int register(User user, String cpassword);
	
	User login(String username, String password);
	
	String forgotPassword(String email);
	
	User findByUserId(int userId);
	
	int updateProfile(User user, InputStream is);
	
	byte[] getUserProfileImage(int userId);
}
