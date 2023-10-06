package com.shopkinh.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopkinh.model.SanPhamModel;
import com.shopkinh.service.ISanPhamService;

@WebServlet(urlPatterns = "/admin-new")
public class NewController extends HttpServlet{

	private static final long serialVersionUID = 2686801510274002166L;
	@Inject
	private ISanPhamService sanphamService;
	
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException { 
    	SanPhamModel model = new SanPhamModel();
    	model.setListResult(sanphamService.findAll());
    	req.setAttribute("model", model);
    	RequestDispatcher rd = req.getRequestDispatcher("/views/admin/new/list.jsp");
		rd.forward(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

}
