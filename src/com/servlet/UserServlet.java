package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.User;

import com.util.JdbcUtil;

@WebServlet("/UserServlet")
public class UserServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
    
    public UserServlet() {
        super();
    }

	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		JdbcUtil jdbc = new JdbcUtil();
		String sql = "select * from user where phone=? and password=? ";
		List<User> users = jdbc.queryPreparedStatement(sql, User.class, phone,password);
		if(users.size()>0){
			HttpSession session = request.getSession();
			session.setAttribute("user", users.get(0));
			request.getRequestDispatcher("good.jsp").forward(request, response);
		}else{
			request.setAttribute("mess", "账号或密码不正确");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}
	protected void exit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
	}
	protected void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String phone=request.getParameter("phone" );
		String username= request.getParameter("username");
		String password= request.getParameter("password");
		String sex= request.getParameter("sex");
		String idcard= request.getParameter("idcard");
		JdbcUtil jdbc = new JdbcUtil();
		String sql="insert into user (username, password, phone,sex,idcard) values(?, ?, ?,?,?)";
		try {
			jdbc.updatePreparedStatement(sql, username, password,phone,sex, idcard);
			//测试是否能写入到数据库
			//System.out.println("用户注册成功");
			response.sendRedirect("login.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

	

}
