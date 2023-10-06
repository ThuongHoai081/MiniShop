package com.shopkinh.service;

import java.util.List;

import com.shopkinh.model.SanPhamModel;


public interface ISanPhamService {
	SanPhamModel save(SanPhamModel sanphamModel);
	SanPhamModel update(SanPhamModel updateSanpham);
	void delete(long[] ids);
	SanPhamModel findOne(long id);
    List<SanPhamModel> findAll();
	
}
