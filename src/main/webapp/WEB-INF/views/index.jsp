<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
<meta charset="UTF-8">
<title>** profile</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
	<table width="75%" cellspacing="0" border="0" cellpadding="20">
	<tr>
		<td align="center">
			<span class="index_title01">DEVELOPER DS PROFILE</span>
		</td>
	</tr>
	<tr>
		<td align="center">
			<span class="index_title02">Woo to the Young to the Woo !</span>
		</td>
	</tr>
	<tr>
		<table width="70%" cellspacing="0" border="0" cellpadding="10">
			<tr>
				<td bgcolor="#D1B2FF" ><span class="index_skill01">J</span><span class="index_skill02">AVA</span></td>
				<td align="center" rowspan="6" bgcolor="#8041D9"><img src="${pageContext.request.contextPath}/resources/img/woo.jpg" width="600" height=450"></td>
			</tr>
			<tr>
				<td bgcolor="#D1B2FF" ><span class="index_skill01">J</span><span class="index_skill02">SP</span></td>
			</tr>
			<tr>
				<td bgcolor="#D1B2FF" ><span class="index_skill01">S</span><span class="index_skill02">PRING</span></td>
			</tr>
			<tr>
				<td bgcolor="#D1B2FF" ><span class="index_skill01">J</span><span class="index_skill02">AVASCRIPT</span></td>
			</tr>
			<tr>
				<td bgcolor="#D1B2FF" ><span class="index_skill01">H</span><span class="index_skill02">TML5</span></td>
			</tr>
			<tr>
				<td bgcolor="#D1B2FF" ><span class="index_skill01">D</span><span class="index_skill02">ATABASE</span></td>
			</tr>
		</table>
	</tr>
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>