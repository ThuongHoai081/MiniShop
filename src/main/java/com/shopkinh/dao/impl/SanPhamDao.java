package com.shopkinh.dao.impl;

import java.util.List;

import com.shopkinh.dao.ISanPhamDAO;
import com.shopkinh.mapper.SanPhamMapper;
import com.shopkinh.model.SanPhamModel;

public class SanPhamDao extends AbstractDAO<SanPhamModel> implements ISanPhamDAO{

	
	@Override
	public Long save(SanPhamModel sanphamModel) {
		StringBuilder sql = new StringBuilder("INSERT INTO san_pham (ten_sp, so_luong,");
		sql.append(" gia, hinh_anh, mo_ta)");
		sql.append(" VALUES(?, ?, ?, ?, ?)");
		return insert(sql.toString(),sanphamModel.getTen_sp(),sanphamModel.getSo_luong(),sanphamModel.getGia(),
				sanphamModel.getHinh_anh(),sanphamModel.getMo_ta());
	
	}

	@Override
	public void update(SanPhamModel updateSanpham) {
		StringBuilder sql = new StringBuilder("UPDATE san_pham SET ten_sp = ?, so_luong = ?,");
		sql.append(" gia = ?, hinh_anh = ?, mo_ta = ? WHERE id = ?");
		update(sql.toString(),updateSanpham.getTen_sp(),updateSanpham.getGia(),updateSanpham.getSo_luong(),
				updateSanpham.getHinh_anh(),updateSanpham.getMo_ta());
	}

	@Override
	public void delete(long id) {
		String sql = "DELETE FROM san_pham WHERE id = ?";
		update(sql,id);
		
	}

	@Override
	public List<SanPhamModel> findAll() {
		String sql = "select * from san_pham ";
		return query(sql, new SanPhamMapper());
	}

	@Override
	public SanPhamModel findOne(Long id) {
		String sql = "SELECT * FROM san_pham WHERE id = ?";
		List<SanPhamModel> news = query(sql, new SanPhamMapper(), id);
		return news.isEmpty() ? null : news.get(0);
	}

}
