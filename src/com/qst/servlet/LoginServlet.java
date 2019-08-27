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
		// ���������ַ�����
				request.setCharacterEncoding("utf-8");
				// ������Ӧ�ַ�����
				response.setContentType("text/html;charset=utf-8");
				// ��ȡ��������
				String type = request.getParameter("type");
				if("login".equals(type)){

				// ��ȡ�û���¼��Ϣ
					String uname = request.getParameter("username");
					String pwd = request.getParameter("password");
					
					
				// �û���¼�ж�(ҵ�����)
				UserDao ud=new UserDao();
				User user = ud.ask(uname,pwd);
				// ��½�ɹ���ʹ�ûỰ�����Լ�¼�û���Ϣ���������������
				
				if(user!=null) {
					request.getSession().setAttribute("user",user);
					
					//response.sendRedirect("index.jsp");
					// ��ȡ��Ӧ�ַ������
					PrintWriter out = response.getWriter();
				
					out.print("<script type='text/javascript'>");
					out.print("alert('��¼�ɹ���');");
					out.print("window.location='index2.jsp';");
					out.print("</script>");
					
				}else {
					// ��ȡ��Ӧ�ַ������
					PrintWriter out = response.getWriter();
				// ��¼ʧ�ܣ�������Ϣ��ʾ�����ص�¼ҳ��
					out.print("<script type='text/javascript'>");
					out.print("alert('�û������������');");
					out.print("window.location='login.jsp';");
					out.print("</script>");
				
					}
				
				
				}
				else {
					
					// ��ȡ��Ӧ�ַ������
					PrintWriter out = response.getWriter();
					// �û����λỰʧЧ
					request.getSession().invalidate();
					// ���ص�½ҳ��
					out.print("<script type='text/javascript'>");
					out.print("alert('���ѳɹ��˳���');");
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
