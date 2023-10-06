package com.shopkinh.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.shopkinh.model.SanPhamModel;

public class SanPhamMapper implements RowMapper<SanPhamModel>{

	@Override
	public SanPhamModel mapRow(ResultSet resultSet) {
		
		try {
			SanPhamModel sp = new SanPhamModel();
			sp.setId(resultSet.getLong("id"));
		    sp.setTen_sp(resultSet.getString("ten_sp"));
		    sp.setSo_luong(resultSet.getInt("so_luong"));
		    sp.setGia(resultSet.getInt("gia"));
		    sp.setHinh_anh(resultSet.getString("hinh_anh"));
		    sp.setMo_ta(resultSet.getString("mo_ta"));
			
			return sp;
		} catch (SQLException e) {
	  	    return null;
		}
		
		
	}

}
