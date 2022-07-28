<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
				<td bgcolor="#D1B2FF" align="center" >
					<c:choose>
						<c:when test="${checkId == '0'}">
							<script type="text/javascript">
								alert("입력하신 아이디는 존재하지 않는 아이디입니다. 다시 확인해주세요.");
								history.go(-1);								
							</script>						
						</c:when>						
						<c:when test="${checkIdPw == '0' }">
							<script type="text/javascript">
								alert("입력하신 비밀번호가 맞지 않습니다. 다시 확인해주세요.");
								history.go(-1);								
							</script>
						</c:when>						
						<c:otherwise>					
							<span class="content_text">
							${mname }님 안녕하세요. 반갑습니다.<br>
							아이디 ${mid }로 로그인에 성공하셨습니다.<br>														
							</span>						
						</c:otherwise>						
						</c:choose>
				</td>
			</tr>
		</table>
	</tr>
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>