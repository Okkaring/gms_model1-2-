<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "member/member_head.jsp" %>

<!-- CONTENT -->
<div id="container">
	<form id="Login_box" action="<%=headRoot(request) %>/common/main.jsp" method="get">
	<img src="<%=headRoot(request) %>/img/mainimg.jpg"/><br /><br />
		<span id="login_id">ID</span><input type="text" name = "id" placeholder="※ID는 숫자 포함 8자 이내"/><br>
		<span id="login_pass">Password</span><input type="password" name = "pw" /><br />
	<br />
	<input type="submit" value="LOGIN" />
	<input type="reset" value="CANCEL" />
	</form>
</div>	
<%@ include file = "../common/footer.jsp" %>