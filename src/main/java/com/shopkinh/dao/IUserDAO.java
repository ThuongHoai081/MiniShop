package com.shopkinh.dao;


import com.shopkinh.model.UserModel;

public interface IUserDAO extends GenericDAO<UserModel>{
	UserModel findByUserNameAndPassword(String userName,String password);
	Long save(UserModel userModel);
	UserModel findOne(Long id);
}
