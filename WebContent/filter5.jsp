<%@page import="com.qst.model.Packageself"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Packageself mes = (Packageself) session.getAttribute("pak1");
	Packageself mes1 = (Packageself) session.getAttribute("pak2");
	Packageself mes2 = (Packageself) session.getAttribute("pak3");
    if (mes != null) {
	// 设置请求字符编码
	request.setCharacterEncoding("utf-8");
	// 设置响应字符编码
	response.setContentType("text/html;charset=utf-8");
	request.getSession().setAttribute("pak1", mes);
	request.getSession().setAttribute("pak2", mes1);
	request.getSession().setAttribute("pak3", mes2);
} else {
		out.print("<script type='text/javascript'>");
		out.print("alert('数据错误，请重新选择套餐！');");
		out.print("window.location='package-version-one.jsp';");
		out.print("</script>");
	}
%> 