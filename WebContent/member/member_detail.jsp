<%@ page language = "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file = "member_head.jsp" %>
<%@ include file= "../constants/db.jsp"%>

<%
	Class.forName(ORACLE_DRIVER);
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	
	PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL,USERNAME,PASSWORD).prepareStatement("SELECT * FROM Member WHERE id=?");
	pstmt.setString(1, id);
	ResultSet rs = 	pstmt.executeQuery();
		if(rs.next()){
		rs.getString(MEMBER_NAME);
		rs.getString(MEMBER_ID);
		rs.getString(MEMBER_PW);
		rs.getString(MEMBER_SSN);
		rs.getString(MEMBER_REGDATE);
		%>
		
<div id="container">
	<%-- 
	<h1><%= this.getSpec(request) %>!</h1>
	<%String[] arr = getSpec(request).split("/"); %> --%>
	
	<table id="member_detail_tab">
		<tr>
			<td colspan="2" rowspan="3" class="content_width"><img src="<%=headRoot(request) %>/img/profile_img.jpg"/></td>
			<td class="content_width">이름</td>
			<td><%=rs.getString(MEMBER_NAME) %></td>
		</tr>
		<tr>
			<td class="content_width">ID</td>
			<td><%=rs.getString(MEMBER_ID)%></td>
		</tr>
		<tr>
			<td class="content_width">SSN</td>
			<td><%=rs.getString(MEMBER_SSN)%></td>
		</tr>
		<tr>
			<td colspan="3">전화</td>
			<td></td>
		</tr>
		<tr>
			<td colspan="3">이메일</td>
			<td></td>
		</tr>
		<tr>
			<td colspan="3">주소</td>
			<td></td>
		</tr>
		<tr>
			<td colspan="3">전공</td>
			<td></td>
		</tr>
		<tr>
			<td colspan="3">과목</td>
			<td></td>
		</tr>
	</table>
	<button id="list_btn" onclick="javascript:goList()">목 록</button>
	<button id="update_btn" onclick="javascript:goUpdate()">수 정</button>
</div>	

<%
	}else{}
%>
<script>
function golist(){
	location.href="<%=headRoot(request)%>/member/member_list.jsp";
}
function goUpdate(){
	location.href="<%=headRoot(request)%>/member/member_update.jsp?id=<%=id%>&name=<%=name%>";
}
</script>
<%@ include file = "../common/footer.jsp" %>
