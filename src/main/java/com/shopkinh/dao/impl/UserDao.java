package com.shopkinh.dao.impl;

import java.util.List;

import com.shopkinh.dao.IUserDAO;
import com.shopkinh.mapper.NewMapper;
import com.shopkinh.model.UserModel;

public class UserDao extends AbstractDAO<UserModel> implements IUserDAO{

	
	@Override
	public UserModel findByUserNameAndPassword(String userName, String password) {
		String sql = "SELECT * FROM i_user WHERE ten = ? AND pass = ?";
		List<UserModel> news = query(sql, new NewMapper(), userName,password);
		return news.isEmpty() ? null : news.get(0);
		
	}

	@Override
	public Long save(UserModel userModel) {
		String sql = "INSERT INTO i_user (ten, pass,email) VALUES(?, ?, ?)";
		return insert(sql, userModel.getUserName(),userModel.getPassword(),userModel.getEmail());
	
	}

	@Override
	public UserModel findOne(Long id) {
		String sql = "SELECT * FROM i_user WHERE id = ?";
		List<UserModel> users = query(sql, new NewMapper(), id);
		return users.isEmpty() ? null : users.get(0);
	}

	

}
