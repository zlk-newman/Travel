package com.qst.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qst.dao.Pdao;
import com.qst.model.Packageself;
import com.qst.model.User;

/**
 * Servlet implementation class p_achieve
 */
@WebServlet("/achieve_p")
public class achieve_p extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public achieve_p() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// …Ë÷√«Î«Û◊÷∑˚±‡¬Î
		request.setCharacterEncoding("UTF-8");
		// …Ë÷√œÏ”¶◊÷∑˚±‡¬Î
		response.setContentType("text/html;charset=UTF-8");
		
		String pname=request.getParameter("type");
		
		
		Packageself pak= new Packageself();
		Pdao pd=new Pdao(); 
		pak=pd.login(pname);
		
		
		//¥Ê»Îsession–≈œ¢
		request.getSession().setAttribute("pak", pak);
		
		
		
		response.sendRedirect("Packagebook.jsp");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
