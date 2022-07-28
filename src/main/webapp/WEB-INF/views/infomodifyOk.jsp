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
							<tr>
								<td colspan="2"><span class="content_text" >${memberDto.mname }님의 회원정보를 수정하였습니다.</span></td>
							</tr>
							<tr>
								<td><span class="content_text" >MEMBER ID :</span></td>
								<td><span class="info_text">${memberDto.mid }</span></td>
							</tr>
							<tr>
								<td><span class="content_text" >PASSWORD :</span></td>
								<td><span class="info_text">${memberDto.mpw }</span></td>
							</tr>
							<tr>
								<td><span class="content_text" >NAME :</span></td>
								<td><span class="info_text">${memberDto.mname }</span></td>
							</tr>
							<tr>
								<td><span class="content_text" >EMAIL :</span></td>
								<td><span class="info_text">${memberDto.memail }</span></td>
							</tr>
							<tr>
								<td><span class="content_text" >JOINDATE :</span></td>
								<td><span class="info_text">${memberDto.mdate }</span></td>
							</tr>
							<tr>
								<td colspan="2" align=center>
									<input class="button" type="submit" value="MODIFY" onclick="location.href='infomodify'">
									<input class="button" type="button" value="CANCLE" onclick="location.href='index'">
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