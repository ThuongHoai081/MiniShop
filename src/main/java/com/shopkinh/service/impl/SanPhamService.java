package com.shopkinh.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.shopkinh.dao.ISanPhamDAO;
import com.shopkinh.model.SanPhamModel;
import com.shopkinh.model.UserModel;
import com.shopkinh.service.ISanPhamService;

public class SanPhamService implements ISanPhamService{
	@Inject
	private ISanPhamDAO sanphamDao;

	@Override
	public SanPhamModel save(SanPhamModel sanphamModel) {
		Long newId = sanphamDao.save(sanphamModel);
		return sanphamDao.findOne(newId);
	}

	@Override
	public SanPhamModel update(SanPhamModel updateSanpham) {
		sanphamDao.update(updateSanpham);
		return sanphamDao.findOne(updateSanpham.getId());
	}

	@Override
	public void delete(long[] ids) {
		for(long id: ids) {
			sanphamDao.delete(id);
		}
		
	}

	@Override
	public List<SanPhamModel> findAll() {
		return sanphamDao.findAll();
	}
	
	@Override
	public SanPhamModel findOne(long id) {
		SanPhamModel spModel = sanphamDao.findOne(id);
        return spModel;
	}
}
