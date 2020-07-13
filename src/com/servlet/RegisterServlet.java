package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.JdbcUtil;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public RegisterServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
