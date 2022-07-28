<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css">
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
			<tr height="533">
				<td bgcolor="#D1B2FF" align=center >
					<table border="0" cellspacing="0" cellpadding="10">
						<form action ="joinOk" method="post">
							<tr>
								<td><span class="content_text" >MEMBER ID :</span></td>
								<td><input class="input_box1" type="text" name="mid" ></td>
							</tr>
							<tr>
								<td><span class="content_text" >PASSWORD :</span></td>
								<td><input class="input_box1"type="password" name="mpw"></td>
							</tr>
							<tr>
								<td><span class="content_text" >PW CHECK :</span></td>
								<td><input class="input_box1"type="password" name="mpw_check"></td>
							</tr>
							<tr>
								<td><span class="content_text" >NAME :</span></td>
								<td><input class="input_box1" type="text" name="mname" ></td>
							</tr>
							<tr>
								<td><span class="content_text" >EMAIL :</span></td>
								<td><input class="input_box1" type="text" name="memail"></td>
							</tr>
							<tr>
								<td colspan="2" align=center>
									<input class="button" type="submit" value="SIGNUP">&nbsp;
									<input class="button" type="button" value="LOGIN" onclick="location.href='login'">
								</td>
							</tr>
						</form>
					</table>
				</td>
			</tr>
		</table>
	</tr>
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>