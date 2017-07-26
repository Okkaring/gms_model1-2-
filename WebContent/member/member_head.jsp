<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<% String now = new SimpleDateFormat("yyyy/ MM / dd / a hh : mm : ss").format(new Date()); %>
<%@ include file="../common/common_service.jsp" %>
<%@ include file="member_service.jsp" %>

<!doctype html>
<html lang="ko">
<head>
	<meta charset="UTF-8" />
	<title>member_head</title>
	<link rel="stylesheet" href="<%=headRoot(request)%>/css/member.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>	
<div id="wrapper">
<!-- TITLE -->
<header>
<h1 id="title"><a href="<%=headRoot(request)%>/index.jsp">STUDENT MGMT</a></h1>
<div id= "clock">   TIME : <%= now %> </div>
<hr id="title_line">
</header>
