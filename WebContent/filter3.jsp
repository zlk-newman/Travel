
<%@page import="com.qst.model.Packageself"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Packageself mes = (Packageself) session.getAttribute("pak");
    if (mes != null) {
	// 设置请求字符编码
	request.setCharacterEncoding("utf-8");
	// 设置响应字符编码
	response.setContentType("text/html;charset=utf-8");
	request.getSession().setAttribute("pak", mes);
} else {
		out.print("<script type='text/javascript'>");
		out.print("alert('数据错误，请重新选择套餐！');");
		out.print("window.location='package-version-one.jsp';");
		out.print("</script>");
	}
%> 