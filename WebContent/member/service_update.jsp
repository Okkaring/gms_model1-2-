<%@ page language = "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<%@ include file = "../constants/db.jsp"%>
<%@ include file = "member_head.jsp" %>

<%
	String name = request.getParameter("name");	
	String id = request.getParameter("id"); //인풋 히든 타입으로 받아온녀석입니다...
	Class.forName(ORACLE_DRIVER);
	PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD)
	.prepareStatement(String.format("UPDATE %s SET %s=? WHERE %s=?", TABLE_MEMBER,MEMBER_NAME,MEMBER_ID));
	pstmt.setString(1, name);
	pstmt.setString(2, id);
	String rs = String.valueOf(pstmt.executeUpdate());
	
	if(rs.equals("1")){
		%>
		<script>
		alert('이름 수정 완료!');
		location.href="<%=headRoot(request)%>/member/member_detail.jsp?id=<%=id%>";
		</script>
		<%
	}else{
		 %>
		 <script>
		alert('회원등록 실패!');
		location.href="<%=headRoot(request)%>/member/member_detail.jsp?id=<%=id%>";
		</script>
		<%
	}
%>