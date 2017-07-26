<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file= "../constants/db.jsp"%>
<%
   Class.forName(ORACLE_DRIVER);
   Connection conn = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD);
   Statement stmt = conn.createStatement();
   String sql = "SELECT * FROM Member WHERE id = 'id'";
   ResultSet rs = stmt.executeQuery(sql);
   
   String findName="";
   if(rs.next()) {
      findName = rs.getString("name");
   }
%>
<!doctype html>
<html lang="ko">
<head>
   <meta charset="UTF-8" />
   <title>DB테스트 화면</title>
</head>
<body>
   <h1>Hello <%=findName%> !! </h1> 
</body>
</html>