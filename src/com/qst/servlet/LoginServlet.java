package com.qst.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qst.dao.UserDao;
import com.qst.model.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
				if("login".equals(type)){

				// 获取用户登录信息
					String uname = request.getParameter("username");
					String pwd = request.getParameter("password");
					
					
				// 用户登录判断(业务处理层)
				UserDao ud=new UserDao();
				User user = ud.ask(uname,pwd);
				// 登陆成功，使用会话域属性记录用户信息，进入管理主界面
				
				if(user!=null) {
					request.getSession().setAttribute("user",user);
					
					//response.sendRedirect("index.jsp");
					// 获取响应字符输出流
					PrintWriter out = response.getWriter();
				
					out.print("<script type='text/javascript'>");
					out.print("alert('登录成功！');");
					out.print("window.location='index2.jsp';");
					out.print("</script>");
					
				}else {
					// 获取响应字符输出流
					PrintWriter out = response.getWriter();
				// 登录失败，错误信息提示，返回登录页面
					out.print("<script type='text/javascript'>");
					out.print("alert('用户名或密码错误！');");
					out.print("window.location='login.jsp';");
					out.print("</script>");
				
					}
				
				
				}
				else {
					
					// 获取响应字符输出流
					PrintWriter out = response.getWriter();
					// 用户本次会话失效
					request.getSession().invalidate();
					// 返回登陆页面
					out.print("<script type='text/javascript'>");
					out.print("alert('您已成功退出！');");
					out.print("window.location='index.jsp';");
					out.print("</script>");
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
