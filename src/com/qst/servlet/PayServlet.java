package com.qst.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qst.dao.MessageDao;
import com.qst.model.Hotel;
import com.qst.model.Message;
import com.qst.model.Packageself;

/**
 * Servlet implementation class ScarletServlet
 */
@WebServlet("/PayServlet")
public class PayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayServlet() {
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
		// ��ȡ�û������Ϣ
		String type = request.getParameter("type");
		
		MessageDao dao = new MessageDao();
		
		if("payYes".equals(type)){
			String tel=((Message)request.getSession().getAttribute("mes")).getPhonenumber();
		String name=((Message)request.getSession().getAttribute("mes")).getName();
		 String email=((Message)request.getSession().getAttribute("mes")).getEmail();
		 
		 
		 String pname=dao.ask3(tel).getPname();
		 String hname=((Hotel)request.getSession().getAttribute("ho")).getHname();
		 int ppri=((Packageself)request.getSession().getAttribute("pak")).getPpri();
		 int hpri=((Hotel)request.getSession().getAttribute("ho")).getHpri();
		 int day=Integer.parseInt(request.getParameter("day"));
		 int tickets=Integer.parseInt(request.getParameter("tickets"));
		 
		
			
		 int pri=ppri+hpri*day;
		 
		Message mes = new Message();
		mes.setName(name);
		mes.setEmail(email);
		mes.setPname(pname);
		mes.setDay(day);
		mes.setTicket(tickets);
		mes.setHname(hname);
		mes.setPhonenumber(tel);
		mes.setPrice(pri);
		
		dao.update(tel, mes);
		Message pay=dao.ask3(tel);
		
		
		
		// ��ӳɹ����ض�����Ӧҳ��
		request.getSession().setAttribute("pay", pay);
		//request.getRequestDispatcher("/hotel-details.jsp");
		response.sendRedirect("MessagePay.jsp");
		}else {
			
			dao.delete2(type);
			// ��ȡ��Ӧ�ַ������
			PrintWriter out = response.getWriter();
			// �û����λỰʧЧ
			
			out.print("<script type='text/javascript'>");
			out.print("alert('���ѳɹ�ȡ��������');");
			out.print("window.location='index2.jsp';");
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
