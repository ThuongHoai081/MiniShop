package com.shopkinh.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.shopkinh.model.UserModel;

public class NewMapper implements RowMapper<UserModel>{

	@Override
	public UserModel mapRow(ResultSet resultSet) {
		
		try {
			UserModel users = new UserModel();
			users.setId(resultSet.getLong("id"));
			users.setUserName(resultSet.getString("ten"));
			users.setPassword(resultSet.getString("pass"));
			
			return users;
		} catch (SQLException e) {
	  	    return null;
		}
		
		
	}

}
