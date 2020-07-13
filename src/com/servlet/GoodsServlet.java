package com.servlet;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.util.JdbcUtil;

/**
 * Servlet implementation class GoodsServlet
 */
@WebServlet("/GoodsServlet")
public class GoodsServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GoodsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void addGoods(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String gname = request.getParameter("gname");
		Integer number = Integer.parseInt(request.getParameter("number"));
		Integer price = Integer.parseInt(request.getParameter("price"));
		String type = request.getParameter("type");
		String presentation = request.getParameter("presentation");
		//获取上传的文件
		Part part = request.getPart("picture");
		//获取请求的信息
		String name = part.getHeader("content-disposition");
		//获取文件后缀
		String tail = name.substring(name.lastIndexOf("."), name.length()-1);
		//生成新的文件名
		String filename = UUID.randomUUID() + tail;
		//上传图片的路径
		String url = "D:\\java\\servlet_web\\WebContent\\images\\"+filename;
		part.write(url);
		String sql="insert into goods (gname,number,price,type,picture,presentation) values(?,?,?,?,?,?)";
		JdbcUtil jdbc = new JdbcUtil();
		try {
			jdbc.updatePreparedStatement(sql, gname,number,price,type,filename,presentation);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			jdbc.close();
		}
	}

	

}
