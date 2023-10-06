package com.shopkinh.dao;

import java.util.List;

import com.shopkinh.model.SanPhamModel;

public interface ISanPhamDAO {
	Long save(SanPhamModel sanphamModel);
    void update(SanPhamModel updateSanpham);
    void delete(long id);
    List<SanPhamModel> findAll();
    SanPhamModel findOne(Long id);
}
