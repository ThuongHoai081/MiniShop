package com.shopkinh.service.impl;

import javax.inject.Inject;

import com.shopkinh.dao.IUserDAO;
import com.shopkinh.model.UserModel;
import com.shopkinh.service.IUserService;

public class UserService implements IUserService {

	@Inject
	private IUserDAO userDao; 
	
	public UserModel findByUserNameAndPassword(String userName, String password) {
		return userDao.findByUserNameAndPassword(userName, password);
	}

	@Override
	public UserModel save(UserModel userModel) {
		Long newId = userDao.save(userModel);
		return userDao.findOne(newId);
	}

	@Override
	public UserModel findOne(long id) {
		UserModel newModel = userDao.findOne(id);
        return newModel;
	}

}
