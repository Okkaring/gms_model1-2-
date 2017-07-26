<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ include file= "../constants/db.jsp"%>
<%@ include file = "../member/member_head.jsp" %>


<%
	Class.forName(ORACLE_DRIVER);
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	
	PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL, USERNAME, PASSWORD)
							.prepareStatement("SELECT pw FROM member WHERE id=?");
	pstmt.setString(1, id);
	ResultSet rs =  pstmt.executeQuery();
	
	if(rs.next()){
	String rsPass=rs.getString("pw");
		if(rsPass.equals(pw)){
			%>
			<div id="container">
			<!-- MAIN MENU -->
			<table id="index-tab">
				<tr id="index-tab-tr">
					<th><i class="fa fa-heart"></i> STUDENT MGMT</th>
					<th><i class="fa fa-file"></i> GRADE MGMT</th>
					<th><i class="fa fa-bars"></i> LIST</th>
				</tr>
				
			<!-- SUB MENU -->
				<tr>
				<!-- STUDENT MGMT -->
					<td>
						<ul class="index-ul">
							<li><a href="<%= headRoot(request) %>/member/member_add.jsp">STUDENT ADD</a></li>
							<li><a href="<%= headRoot(request) %>/member/member_list.jsp">STUDENT LIST</a></li>
							<li><a href="<%= headRoot(request) %>/member/member_search.jsp">STUDENT DETAIL</a></li>
							<li><a href="<%= headRoot(request) %>/member/member_update.jsp">STUDENT UPDATE</a></li>
							<li><a href="<%= headRoot(request) %>/member/member_delete.jsp">STUDENT DELETE</a></li>
						</ul>
						
					</td>
					
				<!-- GRADE MGMT -->
					<td>
						<ul class="index-ul">
							<li><a href="<%= headRoot(request) %>/grade/grade_add.jsp">GRADE ADD</a></li>
							<li><a href="<%= headRoot(request) %>/grade/grade_list.jsp">GRADE LIST</a></li>
							<li><a href="<%= headRoot(request) %>/grade/grade_detail.jsp">GRADE DETAIL</a></li>
							<li><a href="<%= headRoot(request) %>/grade/grade_update.jsp">GRADE UPDATE</a></li>
							<li><a href="<%= headRoot(request) %>/grade/grade_delete.jsp">GRADE DELETE</a></li>
						</ul>
					</td>
					
				<!-- LIST -->
					<td>
						<ul class="index-ul">
							<li><a href="<%= headRoot(request) %>/board/board_write.jsp">BOARD WRITE</a></li>
							<li><a href="<%= headRoot(request) %>/board/board_list.jsp">BOARD LIST</a></li>
							<li><a href="<%= headRoot(request) %>/board/board_detail.jsp">BOARD DETAIL</a></li>
							<li><a href="<%= headRoot(request) %>/board/board_update.jsp">BOARD UPDATE</a></li>
							<li><a href="<%= headRoot(request) %>/board/board_delete.jsp">BOARD DELETE</a></li>
						</ul>
					</td>
				</tr>

			</table>
			</div>
			<%
		}else{
		%>
		<script>
		alert('잘못된 비밀번호');
		location.href="<%=headRoot(request)%>/index.jsp";
		</script>
		<% 
		}
	}else{	
		%>
		<script>
		alert('없는 ID.... 회원가입 요망!!!');
		location.href="<%=headRoot(request)%>/member/member_add.jsp";
		</script>
		<% 
	}
 %>


<%@ include file = "../common/footer.jsp" %>
</html>