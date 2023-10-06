package com.shopkinh.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.shopkinh.dao.GenericDAO;
import com.shopkinh.mapper.RowMapper;

public class AbstractDAO<T> implements GenericDAO<T>{
	public Connection getConnection() {
		 try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/shopkinh";
			String user="root";
			String password ="th4940";
			return DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			return null;
		}
	
		
	}

	@Override
	public <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters) {
		List<T> results = new ArrayList<>();
		Connection connection = null;
		PreparedStatement  statement = null;
		ResultSet resultSet = null;
		try {
			connection = getConnection();
			statement = connection.prepareStatement(sql);
			setParameter(statement,parameters);
			resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				results.add(rowMapper.mapRow(resultSet));
			}
			return results;
			
		}catch (SQLException e) {
			return null;
		}finally {
			try {
				if(connection != null) {
					connection.close();
				}
				if(statement != null) {
					statement.close();
				}
				if(resultSet != null) {
					resultSet.close();
				}
			   } catch(SQLException e) {
				   return null;
			   }
		}
		
		
	}

	private void setParameter(PreparedStatement statement, Object... parameters) {
		try {
		for(int i = 0; i < parameters.length; i++) {
			Object parameter = parameters[i];
			int index = i + 1;
			if(parameter instanceof Long) {
				statement.setLong(index,(Long) parameter);
			}else if(parameter instanceof String) {
				statement.setString(index,(String) parameter);
			}else if(parameter instanceof Integer) {
				statement.setInt(index,(Integer) parameter);
			}else if(parameter instanceof Timestamp) {
				statement.setTimestamp(index,(Timestamp) parameter);
			}else if(parameter instanceof Float) {
				statement.setFloat(index,(Float) parameter);
			}
		}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
	}
	@Override
	public Long insert(String sql, Object... parameters) {
		Connection connection = null;
		Long id = null;
		PreparedStatement  statement = null;
		ResultSet resultSet = null;
		try {
			connection = getConnection();
			connection.setAutoCommit(false);
			statement = connection.prepareStatement(sql,statement.RETURN_GENERATED_KEYS);
			setParameter(statement, parameters);
			statement.executeUpdate();
			resultSet = statement.getGeneratedKeys();
			if(resultSet.next()) {
				id =  resultSet.getLong(1);
			}
			connection.commit();
			return id;
			
		}catch(SQLException e) {
			if(connection != null)
			{
				try {
					connection.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
			
		}finally {
			try {
				if(connection != null) {
					connection.close();
				}
				if(statement != null) {
					statement.close();
				}
				if(resultSet != null) {
					resultSet.close();
				}
				
			   } catch(SQLException e) {
				  e.printStackTrace();
			   }
			
		}
		return null;
		
	}
	@Override
	public void update(String sql, Object... parameters) {
		Connection connection = null;
		PreparedStatement  statement = null;
		try {
			connection = getConnection();
			connection.setAutoCommit(false);
			statement = connection.prepareStatement(sql);
			setParameter(statement, parameters);
			statement.executeUpdate();
			connection.commit();
			
		}catch(SQLException e) {
			if(connection != null)
			{
				try {
					connection.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
			
		}finally {
			try {
				if(connection != null) {
					connection.close();
				}
				if(statement != null) {
					statement.close();
				}
				
				
			   } catch(SQLException e) {
				  e.printStackTrace();
			   }
			
		}
	}

}



