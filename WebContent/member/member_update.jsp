<%@ page language = "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "member_head.jsp" %>

<%
	String id= request.getParameter("id");
	String name= request.getParameter("name");
	String ssn= request.getParameter("ssn");
%>
		
<div id="container">
	<form action="<%=headRoot(request)%>/member/service_update.jsp" method="get" >
	<table id="member_detail_tab">
		<tr>
			<td colspan="2" rowspan="3" class="content_width"><img src="<%=headRoot(request) %>/img/profile_img.jpg"/></td>
			<td class="content_width">이름</td>
			<td><input type="text" id="update_name" name="name" placeholder="<%=name%>" /></td>
		</tr>
		<tr>
			<td class="content_width">ID</td>
			<td><%=id %></td>
		</tr>
		<tr>
			<td class="content_width">SSN</td>
			<td></td>
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
	<input type="submit" id="confirm_btn"value="수 정"/>
	<input type="button" onclick="javascript:cancel()" value="취 소"/>
	<input type="hidden" name="id" value="<%=id %>" />
	</form>
</div>	

	<%-- <script>
	function confirm(){
		location.href="<%=headRoot(request)%>/member/service_update.jsp?id=<%=id%>&name=<%=%>";
	}--%>
	<script>
	function cancle(){
		location.href="<%=headRoot(request)%>/member/member_list.jsp";
	}
	</script> 
<%@ include file = "../common/footer.jsp" %>
