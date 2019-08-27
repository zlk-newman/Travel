package com.qst.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qst.dao.Pdao;
import com.qst.model.Packageself;

/**
 * Servlet implementation class DisplayOneServlet
 */
@WebServlet("/DisplayOneServlet")
public class DisplayOneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayOneServlet() {
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
				
				String pname="Dubai ®C All Stunning Places";
				String pname1="Thailand ®C All Stunning Places";
				String pname2="England ®C All Stunning Places";
				
				Packageself pak1= new Packageself();
				Packageself pak2= new Packageself();
				Packageself pak3= new Packageself();
				Pdao pd=new Pdao(); 
				pak1=pd.login(pname);
				pak2=pd.login(pname1);
				pak3=pd.login(pname2);
				
				//¥Ê»Îsession–≈œ¢
				request.getSession().setAttribute("pak1", pak1);
				request.getSession().setAttribute("pak2", pak2);
				request.getSession().setAttribute("pak3", pak3);
				
				
				
				response.sendRedirect("package-version-one.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
