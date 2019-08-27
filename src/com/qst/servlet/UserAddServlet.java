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
		// ���������ַ�����
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		// ��ȡ�û������Ϣ
		String userLogname = request.getParameter("username");
		String userPwd = request.getParameter("pas");
		String pwdcfm = request.getParameter("pwdcfm");
		// ����һ��������װ�û���Ϣ��JavaBean
		User user = new User(userLogname,userPwd);
		// �û���Ϣ���
		UserDao dao = new UserDao();
		if(dao.ask2(userLogname)==null) {
			if(userPwd.equals("")) {
				PrintWriter out = response.getWriter();
				out.print("<script type='text/javascript'>");
				out.print("alert('���벻��Ϊ�գ�');");
				out.print("window.location='sign-up.jsp';");
				out.print("</script>");
			}else if(pwdcfm.equals(userPwd)) {
			dao.insert(user);
			// ��ӳɹ����ض�����Ӧҳ��
			PrintWriter out = response.getWriter();
			out.print("<script type='text/javascript'>");
			out.print("alert('ע��ɹ���');");
			out.print("window.location='login.jsp';");
			out.print("</script>");
			}else {
				PrintWriter out = response.getWriter();
				out.print("<script type='text/javascript'>");
				out.print("alert('�������벻һ�£�');");
				out.print("window.location='sign-up.jsp';");
				out.print("</script>");
			}
		}else {
			PrintWriter out = response.getWriter();
			out.print("<script type='text/javascript'>");
			out.print("alert('���û��Ѵ��ڣ�');");
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
