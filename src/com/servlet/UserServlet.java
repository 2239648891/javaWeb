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
			request.getRequestDispatcher("GoodsServlet?action=query").forward(request, response);

		}else{
			request.setAttribute("mess", "账号或密码不正确");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

	protected void exit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		//request.getRequestDispatcher("login.jsp").forward(request, response);
		response.sendRedirect("login.jsp");
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
			System.out.println("用户注册成功");
			response.sendRedirect("login.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			request.setAttribute("mess", "注册失败，请稍后在试");
			//跳转到错误页面
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
	
	protected void editPassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String oldPass = request.getParameter("oldPass");
		String newPass = request.getParameter("newPass");
		HttpSession session = request.getSession();
		User u = (User)session.getAttribute("user");
		//System.out.println(phone);
		String phone = u.getPhone();
		String sql = "select * from user where phone=?";
		try {
			JdbcUtil jdbc = new JdbcUtil();
			List<User> users = jdbc.queryPreparedStatement(sql, User.class, phone);
			User user = users.get(0);
			if(user.getPassword().equals(oldPass)) {
				String sql1 = "update user set password =? where phone=?";
				jdbc.updatePreparedStatement(sql1, newPass,phone);
				request.setAttribute("mess", "修改密码成功,请重新登录!");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}else {
				request.setAttribute("mess", "您输入的旧密码不正确!");
				request.getRequestDispatcher("editPassword.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	protected void searchInformation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//查询个人信息
		request.getRequestDispatcher("editInformation.jsp").forward(request, response);
		
	}
	protected void toEditPassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//跳转
		request.getRequestDispatcher("editPassword.jsp").forward(request, response);
		
	}
	
	protected void editInformation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//修改个人信息
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String sex = request.getParameter("sex");
		String idcard = request.getParameter("idcard");
		JdbcUtil jdbc = new JdbcUtil();
		try {
			//修改数据
			String sql1 = "update user set username =?,sex =?,idcard =? where phone=?";
			jdbc.updatePreparedStatement(sql1, username,sex,idcard,phone);
			//更新session内数据
			String sql2 = "select * from user where phone=?";
			List<User> users = jdbc.queryPreparedStatement(sql2, User.class, phone);
			HttpSession session = request.getSession();
			session.setAttribute("user", users.get(0));
			request.getRequestDispatcher("index.jsp").forward(request, response);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
}
