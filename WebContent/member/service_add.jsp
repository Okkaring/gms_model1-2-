<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file= "../constants/db.jsp"%>
<%@ include file = "member_head.jsp" %>

<%
	Class.forName(ORACLE_DRIVER);
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
/* 	String birth = request.getParameter("birthday"); */
	String name = request.getParameter("name");	
/* 	String[] subjects= request.getParameterValues("subject"); */

	PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD)
	.prepareStatement(String.format("INSERT INTO %s(%s,%s,%s,%s,%s) VALUES(?,?,?,?,SYSDATE)"
			,TABLE_MEMBER, MEMBER_ID,MEMBER_PW,MEMBER_SSN,MEMBER_NAME,MEMBER_REGDATE));
	pstmt.setString(1, id);
	pstmt.setString(2, pw);
	pstmt.setString(3, "");
	pstmt.setString(4, name);
	String rs = "";
	rs = String.valueOf(pstmt.executeUpdate());
	
	if(rs.equals("1")){
		%>
		<script>
		alert('회원등록 완료!');
		location.href="<%=headRoot(request)%>/index.jsp";
		</script>
		<%
	}else{
		 %>
		 <script>
		alert('회원등록 실패!');
		location.href="<%=headRoot(request)%>/member/member_add.jsp";
		</script>
		<%
	}
%>



