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
 * Servlet implementation class UserAddServlet
 */
@WebServlet("/UserAddServlet")
public class UserAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 设置请求字符编码
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		// 获取用户添加信息
		String userLogname = request.getParameter("username");
		String userPwd = request.getParameter("pas");
		String pwdcfm = request.getParameter("pwdcfm");
		// 定义一个用来封装用户信息的JavaBean
		User user = new User(userLogname,userPwd);
		// 用户信息添加
		UserDao dao = new UserDao();
		if(dao.ask2(userLogname)==null) {
			if(userPwd.equals("")) {
				PrintWriter out = response.getWriter();
				out.print("<script type='text/javascript'>");
				out.print("alert('密码不能为空！');");
				out.print("window.location='sign-up.jsp';");
				out.print("</script>");
			}else if(pwdcfm.equals(userPwd)) {
			dao.insert(user);
			// 添加成功，重定向到响应页面
			PrintWriter out = response.getWriter();
			out.print("<script type='text/javascript'>");
			out.print("alert('注册成功！');");
			out.print("window.location='login.jsp';");
			out.print("</script>");
			}else {
				PrintWriter out = response.getWriter();
				out.print("<script type='text/javascript'>");
				out.print("alert('两次密码不一致！');");
				out.print("window.location='sign-up.jsp';");
				out.print("</script>");
			}
		}else {
			PrintWriter out = response.getWriter();
			out.print("<script type='text/javascript'>");
			out.print("alert('该用户已存在！');");
			out.print("window.location='sign-up.jsp';");
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
