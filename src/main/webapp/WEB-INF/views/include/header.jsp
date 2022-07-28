<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<title>header</title>
</head>
<body>
	<table width="100%" cellspacing="0" border="0" cellpadding="0">
		<tr height="50" bgcolor="#750061">
			<td width="60%">&nbsp;</td>
			<td class="header_menu" width="5%">
				<a href="index">HOME</a>
			</td>
			<td class="header_menu" width="5%">
				<%	
					String sessionId = (String)session.getAttribute("sid");
				if(sessionId == null) {
					
				%>
				<a href="login">LOGIN</a>
				<%
					}else {	
				%>
				<a href="logout">LOGOUT</a>
				<%
					}
				%>
			</td>
			<td class="header_menu" width="5%">
				<%
					if(sessionId == null) {
				%>
				<a href="join">JOIN</a>
				<%
					}else {
				%>
				<a href="infomodify">MODIFY</a>
				<%
					}
				%>
			</td>
			<td class="header_menu" width="6%">
				<a href="profile">PROFILE</a>
			</td>
			<td class="header_menu" width="7%">
				<a href="question">QUESTION</a>
			</td>
			<td class="header_menu" width="6%">
				<a href="contact">CONTACT</a>
			</td>
		</tr>
		<tr height="40" >
			<td>&nbsp;</td>
		</tr>
		<tr height="40">
			<%
				String sname = (String)session.getAttribute("sname");
				if(sname != null) {
			%>
			<td colspan="8" align="right">
				<span class="login_text"><b><%= sname %></b>님 로그인 중입니다.&nbsp;&nbsp;&nbsp; </span>
			</td>
			<%
				}
			%>
	</table>
</body>
</html>