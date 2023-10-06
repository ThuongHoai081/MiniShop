package com.shopkinh.admin.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shopkinh.model.SanPhamModel;
import com.shopkinh.service.ISanPhamService;
import com.shopkinh.utils.HttpUtil;

@WebServlet(urlPatterns = {"/api-admin-sanpham"})
public class NewAPI extends HttpServlet{
	@Inject
	private ISanPhamService sanphamService;

	private static final long serialVersionUID = -5599245646509811793L;
	
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	ObjectMapper mapper = new ObjectMapper();
    	req.setCharacterEncoding("UTF-8");
    	resp.setContentType("application/json");
    	SanPhamModel newModel = HttpUtil.of(req.getReader()).toModel(SanPhamModel.class);
        newModel = sanphamService.save(newModel);
        System.out.println(newModel);
        mapper.writeValue(resp.getOutputStream(), newModel);
    }
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	ObjectMapper mapper = new ObjectMapper();
    	req.setCharacterEncoding("UTF-8");
    	resp.setContentType("application/json");
    	SanPhamModel updateNew = HttpUtil.of(req.getReader()).toModel(SanPhamModel.class);
    	updateNew = sanphamService.update(updateNew);
    	 System.out.println(updateNew);
    	mapper.writeValue(resp.getOutputStream(), updateNew);
    	    
    	
    }
//    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//    	ObjectMapper mapper = new ObjectMapper();
//    	req.setCharacterEncoding("UTF-8");
//    	resp.setContentType("application/json");
//    	SanPhamModel newModel = HttpUtil.of(req.getReader()).toModel(SanPhamModel.class);
//    	newService.delete(newModel.getIds());
//    	mapper.writeValue(resp.getOutputStream(), "{}");
//    	
//    }

    private void saveOrUpdate() {
    	
    }
}
