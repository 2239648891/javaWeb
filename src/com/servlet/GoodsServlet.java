package com.servlet;

import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.model.Goods;
import com.util.JdbcUtil;
import com.util.PageUtil;

/**
 * Servlet implementation class GoodsServlet
 */
@WebServlet("/GoodsServlet")
@MultipartConfig
public class GoodsServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GoodsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String gname = request.getParameter("gname");
		JdbcUtil jdbc =new JdbcUtil();
		String sql="delete from goods where gname =?";
		try {
			jdbc.updatePreparedStatement(sql, gname);
			//查询数据库中的商品列表
			//response.sendRedirect(arg0);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			request.setAttribute("mess", "删除失败，请稍后在试");
			//跳转到错误页面
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
    protected void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Integer pagesize=8;
		Integer cp = Integer.parseInt(request.getParameter("cp")==null || request.getParameter("cp").equals("") ?"1":request.getParameter("cp"));
		String gname = request.getParameter("gname");
		JdbcUtil jdbc = new JdbcUtil();
		StringBuffer sql = new StringBuffer();
		sql.append("select * from goods where 1=1 ");
		if(gname!=null && !gname.equals("")){
			sql.append(" and gname like '%"+gname+"%'");
		}
		sql.append(" order by id asc");
		List<Goods> temp = jdbc.queryPreparedStatement(sql.toString(), Goods.class);
		long total = temp.size() % pagesize ==0 ? temp.size()/pagesize : temp.size() /pagesize + 1;
		total = total==0 ? 1 : total;
		if(cp>total || cp<=0){
			cp=1;
		}
		StringBuffer sb = new StringBuffer();
		sb.append("select gname, number, price, type, picture, state, presentation, id from ( ");
		sb.append(sql);
		sb.append(" ) t order by id LIMIT "+(cp-1)*pagesize+","+(cp*pagesize));
		
		
		
		
		List<Goods> goods = jdbc.queryPreparedStatement(sb.toString(), Goods.class);
		
		request.setAttribute("goods", goods);
		String pageTool = PageUtil.getPageTool(request, temp.size(), cp, pagesize);
		request.setAttribute("pageutil", pageTool);
		jdbc.close();
		
		request.getRequestDispatcher("good.jsp").forward(request, response);
		
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
