package com.shopkinh.model;

public class SanPhamModel extends AbstractModel<SanPhamModel> {
	
	private String ten_sp;
	private int so_luong;
	private int gia;
	private String hinh_anh;
	private String mo_ta;
	public String getTen_sp() {
		return ten_sp;
	}
	public void setTen_sp(String ten_sp) {
		this.ten_sp = ten_sp;
	}
	public int getSo_luong() {
		return so_luong;
	}
	public void setSo_luong(int so_luong) {
		this.so_luong = so_luong;
	}
	public float getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public String getHinh_anh() {
		return hinh_anh;
	}
	public void setHinh_anh(String hinh_anh) {
		this.hinh_anh = hinh_anh;
	}
	public String getMo_ta() {
		return mo_ta;
	}
	public void setMo_ta(String mo_ta) {
		this.mo_ta = mo_ta;
	}
	
	

}
