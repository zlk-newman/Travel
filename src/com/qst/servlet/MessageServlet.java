package com.qst.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.qst.dao.MessageDao;


import com.qst.model.Message;

import com.qst.model.User;


@WebServlet("/MessageServlet")
public class MessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MessageServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 设置请求字符编码
		request.setCharacterEncoding("utf-8");
		// 设置响应字符编码
		response.setContentType("text/html;charset=utf-8");
		// 获取操作类型
		String type = request.getParameter("type");
		if("book".equals(type)){
			
			HttpSession session =  request.getSession();
			
			User u=((User)session.getAttribute("user"));
			
			String uname = u.getUname();
			
			
			MessageDao md=new MessageDao();
		List<Message> list =md.ask2(uname);
	
		// 登陆成功，使用会话域属性记录用户信息，进入管理主界面
		if(list!=null) {
			
		  
			request.setAttribute("list",list);
			RequestDispatcher rd=request.getRequestDispatcher("Message.jsp");
			rd.forward(request,response);
			
		}else {
			PrintWriter out = response.getWriter();
			
			out.print("<script type='text/javascript'>");
			out.print("alert('页面错误！');");
			out.print("window.location='index2.jsp';");
			out.print("</script>");
		
			}
		
		
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
