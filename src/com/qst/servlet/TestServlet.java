package com.qst.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qst.dao.MessageDao;
import com.qst.dao.Pdao;
import com.qst.model.Message;
import com.qst.model.Packageself;

;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public TestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
			
		
		
			
			String s1=request.getParameter("k");
			
			Packageself pak= new Packageself();
			Pdao pd=new Pdao(); 
			pak=pd.login2(s1);
			if (pak!=null) {
			
			//存入session信息
			request.getSession().setAttribute("pak", pak);
			
			
			
			response.sendRedirect("Packagebook.jsp");
		    }else {
		    	PrintWriter out = response.getWriter();
				// 登录失败，错误信息提示，返回登录页面
					out.print("<script type='text/javascript'>");
					out.print("alert('查询失败！');");
					out.print("window.location='index2.jsp';");
					out.print("</script>");
		
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
