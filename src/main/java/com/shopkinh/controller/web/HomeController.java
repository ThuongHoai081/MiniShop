package com.shopkinh.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopkinh.model.UserModel;
import com.shopkinh.service.IUserService;
import com.shopkinh.utils.FormUtil;
import com.shopkinh.utils.SessionUtil;


@WebServlet(urlPatterns = {"/trang-chu","/dang-nhap","/dang-ky"})
public class HomeController extends HttpServlet{
	@Inject
	private IUserService userService;
	
	private static final long serialVersionUID = 2686801510274002166L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
//		 String action = req.getParameter("action"); if(action != null &&
//		 action.equals("login")) { RequestDispatcher rd =
//		 req.getRequestDispatcher("/views/dangNhap.jsp"); rd.forward(req, resp); }else
//		 if(action != null && action.equals("register")) { RequestDispatcher rd =
//		 req.getRequestDispatcher("/views/dangKy.jsp"); rd.forward(req, resp); }else
//		 if(action != null && action.equals("logout")) {
//		 SessionUtil.getInstance().removeValue(req, "USERMODEL");
//		 resp.sendRedirect(req.getContextPath()+"/trang-chu"); }
		
		String action = req.getParameter("action");
		if(action != null && action.equals("login"))
		{
			RequestDispatcher rd = req.getRequestDispatcher("/views/dangNhap.jsp");
			rd.forward(req, resp);
		}if(action != null && action.equals("register"))
		{
			RequestDispatcher rd = req.getRequestDispatcher("/views/dangKy.jsp");
			rd.forward(req, resp);
		}else if(action != null && action.equals("logout")) {
			
		}
		 
		RequestDispatcher rd = req.getRequestDispatcher("/views/web/home.jsp");
		rd.forward(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String action = req.getParameter("action");
//		if(action != null && action.equals("login"))
//		{
//			String name = req.getParameter("ten");
//			String passWord = req.getParameter("pass");
//			UserModel model = userService.findByUserNameAndPassword(name, passWord);
//			if(model != null) {
//				SessionUtil.getInstance().putValue(req, "USERMODEL", model);
//				resp.sendRedirect(req.getContextPath()+"/trang-chu");
//				
//			}else {
//				resp.sendRedirect(req.getContextPath()+"/dang-nhap?action=login");
//			}
//			
//		}else if(action != null && action.equals("register")) {
//			String name = req.getParameter("hoten");
//			String email = req.getParameter("email");
//			String passWord = req.getParameter("matkhau");
//			UserModel model = new UserModel() ;
//			if(model != null) {
//				resp.sendRedirect(req.getContextPath()+"/dang-nhap?action=login");
//				
//			}else {
//				resp.sendRedirect(req.getContextPath()+"/dang-ky?action=register");
//			}
//			
//		}else if(action != null && action.equals("logout")) {
//			
//		}
//	}
	String action = req.getParameter("action");
	if(action != null && action.equals("login"))
	{
		String name = req.getParameter("ten");
		String passWord = req.getParameter("pass");
		UserModel model = userService.findByUserNameAndPassword(name, passWord);
		if(model != null) {
			resp.sendRedirect(req.getContextPath()+"/trang-chu");
			
		}else {
			resp.sendRedirect(req.getContextPath()+"/dang-nhap?action=login");
		}
		
	}else if(action != null && action.equals("register")) {
		String name = req.getParameter("hoten");
		String email = req.getParameter("email");
		String passWord = req.getParameter("matkhau");
		UserModel model = FormUtil.toModel(UserModel.class, req);
		model.setEmail(email);
		model.setPassword(passWord);
		model.setUserName(name);
		model = userService.save(model);
		if(model != null) {
			resp.sendRedirect(req.getContextPath()+"/dang-nhap?action=login");
			
		}else {
			resp.sendRedirect(req.getContextPath()+"/dang-ky?action=register");
		}
		
	}else if(action != null && action.equals("logout")) {
		
	}
}





}
