<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file= "../constants/db.jsp"%>
<%@ include file = "member_head.jsp" %>

<%
	Class.forName(ORACLE_DRIVER);
	PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement("SELECT * FROM Member");
	ResultSet rs = pstmt.executeQuery();
	
	List<Map<String,String>> list = new ArrayList<>();
	while(rs.next()){
		
		HashMap<String,String> map = new HashMap<>();
		map.put("id", rs.getString(1));
		map.put("ssn", rs.getString(3));
		map.put("name", rs.getString(4));
		map.put("regdate", rs.getString(5));
		list.add(map);
	}
%>

<div id="container">
	<table id="member_list_tab">
		<tr>
			<th> N°</th>
			<th> ID</th>
			<th> SSN</th>
			<th> NAME</th>
			<th> REGDATE</th>
			<th> PHON</th>
			<th> @EMAIL</th>
			<th> MAJOR</th>
			<th> SUBJECT</th>
		</tr>

<%
	int cnt = list.size();
	for(int i=0;i<list.size();i++){
	%> 
	<tr>
	<td><%= cnt--%></td>
	<td><%= list.get(i).get("id")%></td>
	<td><%= list.get(i).get("ssn")%></td>
	<td><%= list.get(i).get("name")%></td>
	<td><%= list.get(i).get("regdate")%></td>
	<td>010-4410-****</td>
	<td>okkaring@gmail.com</td>
	<td>ART , DESIGN</td>
	<td>java, css</td>
	</tr>
	<%
	}
	%>	
	</table>
</div>
<%@ include file = "../common/footer.jsp" %>