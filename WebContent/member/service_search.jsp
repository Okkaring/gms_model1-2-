<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "member_head.jsp" %>

<%
	String option = request.getParameter("option");	
	String search = request.getParameter("search");
	
	switch(option){
	case "id": 
		%>
	<script>
		location.href="<%= headRoot(request) %>/member/member_detail.jsp?id=<%=search%>";
	</script>
		<%
		break;
	case "name": 
		%>
	<script>
		location.href="<%= headRoot(request) %>/member/member_list.jsp?name=<%=search%>";
	</script>
		<%
		break;
	}
%>