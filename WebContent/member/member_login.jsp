<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "member_head.jsp" %>
<!-- CONTENT -->
<div id="container">
	<img src="<%=root(request)%>/img/mainimg.jpg"/><br /><br />
		<span id="login_id">ID</span><input type="text" placeholder="※ID는 숫자 포함 8자 이내"/><br>
		<span id="login_pass">Password</span><input type="password"/><br />
	<br />
	<button id="login_btn"  onclick="window.location.href='member_detail.html'">LOGIN</button>
	<button id="cancle_btn" onclick="window.location.href='../index.html'">MAIN</button>
</div>	
<%@ include file = "../common/footer.jsp" %>