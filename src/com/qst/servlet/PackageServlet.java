package com.qst.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qst.dao.HotelDao;
import com.qst.dao.MessageDao;
import com.qst.model.Hotel;
import com.qst.model.Message;
import com.qst.model.Packageself;
import com.qst.model.User;

/**
 * Servlet implementation class EnglandServlet
 */
@WebServlet("/PackageServlet")
public class PackageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PackageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  // 设置请求字符编码
		request.setCharacterEncoding("utf-8");
		// 设置响应字符编码
		response.setContentType("text/html;charset=utf-8");
		// 获取操作类型
		String type = request.getParameter("type");
		if("lo".equals(type)){

		String Sh1="Sheraton Hotel";
		String Sh2="Daydream Hotel";
		String Sh3="Scarlet Lagoon Hotel";
		
		Hotel h1=new Hotel();
		Hotel h2=new Hotel();
		Hotel h3=new Hotel();
		
		HotelDao hd= new HotelDao();
	
		h1=hd.login(Sh1);
		h2=hd.login(Sh2);
		h3=hd.login(Sh3);
		
		request.getSession().setAttribute("h1", h1);
		request.getSession().setAttribute("h2", h2);
		request.getSession().setAttribute("h3", h3);
		response.sendRedirect("hotel-version-one.jsp");
		}else {
			String Sh1="Sheraton Hotel";
			String Sh2="Daydream Hotel";
			String Sh3="Scarlet Lagoon Hotel";
			
			Hotel h1=new Hotel();
			Hotel h2=new Hotel();
			Hotel h3=new Hotel();
			
			HotelDao hd= new HotelDao();
		
			h1=hd.login(Sh1);
			h2=hd.login(Sh2);
			h3=hd.login(Sh3);
			
			request.getSession().setAttribute("h1", h1);
			request.getSession().setAttribute("h2", h2);
			request.getSession().setAttribute("h3", h3);
					// 获取用户添加信息
		            String pname=((Packageself)request.getSession().getAttribute("pak")).getPname();
					String name = ((User)request.getSession().getAttribute("user")).getUname();
					String email = request.getParameter("email");
					String tel = request.getParameter("tel");
					
					MessageDao dao = new MessageDao();
					Message mes1 = dao.ask3(tel);
					
					if(mes1!=null) {
						PrintWriter out = response.getWriter();
						 // 设置请求字符编码
			            
						out.print("<script type='text/javascript'>");
						out.print("alert('您输入的唯一验证号已存在，请重新输入！');");
						out.print("window.location='Packagebook.jsp';");
						out.print("</script>");
					
					}else {
					
					Message mes = new Message();
					mes.setName(name);
					mes.setEmail(email);
					mes.setPhonenumber(tel);
					mes.setPname(pname);
					// 用户信息添加
					
					dao.insert(mes);
					//int id=dao.ask(name,tel).getId();
					//mes.setId(id);
					//System.out.println(mes);
					// 添加成功，重定向到响应页面
					request.getSession().setAttribute("mes", mes);
					//request.getRequestDispatcher("/hotel-details.jsp");
					response.sendRedirect("hotel-version-one.jsp");
					}
		}
					
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
