
<%@page import="com.qst.model.Hotel"%>
<%@page import="com.qst.model.Message"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Message mes = (Message) session.getAttribute("mes");
 	Hotel mes1 = (Hotel) session.getAttribute("h1");
	Hotel mes2 = (Hotel) session.getAttribute("h2");
	Hotel mes3 = (Hotel) session.getAttribute("h3");
    if (mes != null) {
    	
    				// 设置请求字符编码
    				request.setCharacterEncoding("utf-8");
    				// 设置响应字符编码
    				
    				response.setContentType("text/html;charset=utf-8");
    				request.getSession().setAttribute("h1", mes1);
    				request.getSession().setAttribute("h2", mes2);
    				request.getSession().setAttribute("h3", mes3);
    				
} else {
		out.print("<script type='text/javascript'>");
		out.print("alert('请您先选择套餐！');");
		out.print("window.location='index2.jsp';");
		out.print("</script>");
	}
%> 