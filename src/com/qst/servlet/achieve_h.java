package com.qst.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qst.dao.HotelDao;
import com.qst.model.Hotel;

/**
 * Servlet implementation class achieve_h
 */
@WebServlet("/achieve_h")
public class achieve_h extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public achieve_h() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 设置请求字符编码
				request.setCharacterEncoding("UTF-8");
				// 设置响应字符编码
				response.setContentType("text/html;charset=UTF-8");
				
				String hname=request.getParameter("type");
				Hotel ho=new Hotel();
				HotelDao hd=new HotelDao();
				ho=hd.login(hname);
				//存入session信息
				request.getSession().setAttribute("ho", ho);
				response.sendRedirect("HotelBook.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
