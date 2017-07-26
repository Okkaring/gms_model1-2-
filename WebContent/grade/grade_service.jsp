<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%!
	public String getSpec(HttpServletRequest request){
	String spec="";
	
	String name=request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String gender = request.getParameter("gender");
	String birth=request.getParameter("birthday");
	String age=String.valueOf(Integer.parseInt(new SimpleDateFormat("yyyy").format(new Date())) -Integer.parseInt(birth));
	String email = request.getParameter("email");
	String major = request.getParameter("major");
	
	spec=String.format("%s/%s/%s/%s/%s/%s/%s",name,id,pw,gender,age,email,major);
	
	return spec;
	}

	public String root(HttpServletRequest request){
		return request.getContextPath();
	}
%>