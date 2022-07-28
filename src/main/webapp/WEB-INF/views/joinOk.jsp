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
				<td bgcolor="#D1B2FF" align="center ">
					
					<%--
						int checkId = Integer.parseInt(request.getAttribute("checkId").toString());
						if(checkId == 0){
							
					--%>
					<c:choose>
					<c:when test="${checkId == '0' }">
					<span class="content_text">
						${mname }님 회원가입을 축하드립니다<br>
						가입하신 아이디는 ${mid }입니다 <br>
					</span>
					</c:when>
					<%--
						}else {
					--%>
					<c:otherwise>
					<script type="text/javascript">
						alert("가입하시려는 아이디는 이미 사용중입니다. 다른 아이디를 입력해주세요.");//경고창
						history.go(-1);  //이전페이지로 돌려보냄
					</script>
					</c:otherwise>
					</c:choose>
					<%--
						}
					--%>
				</td>
			</tr>
		</table>
	</tr>
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>