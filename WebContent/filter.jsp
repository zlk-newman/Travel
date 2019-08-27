<%@page import="com.qst.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
		// 设置请求字符编码
		request.setCharacterEncoding("utf-8");
		// 设置响应字符编码
		response.setContentType("text/html;charset=utf-8");
		String uname = ((User) session.getAttribute("user")).getUname();
		out.append(uname);
	} else {
		response.sendRedirect("login.jsp");
	}
%> 