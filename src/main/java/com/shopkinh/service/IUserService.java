package com.shopkinh.service;

import com.shopkinh.model.UserModel;

public interface IUserService {
	UserModel findByUserNameAndPassword(String userName, String password);
	UserModel save(UserModel userModel);
	UserModel findOne(long id);
}
