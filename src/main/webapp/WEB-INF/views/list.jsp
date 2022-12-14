<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/qlist.css">
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
			
			<tr height="533" align="center">
				
				<td bgcolor="#D1B2FF" align=center >
				<span class="content_text"> ★QUESTION BOARD★ </span><br><br>
				
					<table width="85%"border="0" cellspacing="0" cellpadding="10">
						<tr>
							<td class="board_title">NO</td>
							<td class="board_title">ID</td>
							<td class="board_title" width="40%">QUESTION</td>
							<td class="board_title">NAME</td>
							<td class="board_title">DATE</td>
						</tr>
						</tr>
						<c:forEach items="${list}" var="dto">
						<tr>
							<td class="board_content">${dto.qnum }</td>
							<td class="board_content">${dto.qid }</td>
							<td class="board_content" style="text-align: left;">
							<a href="qview?qnum=${dto.qnum}" style="color:black">
							<c:choose>
							<c:when test="${fn:length(dto.qcontent) > 25}">
								<c:out value="${fn:substring(dto.qcontent,0,25)}">					
								</c:out>
							</c:when>
							<c:otherwise>
								<c:out value="${dto.qcontent }"></c:out>
							</c:otherwise>
							</c:choose>
							</a>
							</td>
							<td class="board_content">${dto.qname }</td>
							<td class="board_content">
								<c:out value="${fn:substring(dto.qdate,0,20) }"></c:out></td>
						</tr>
						</c:forEach>
						
						<tr>
							<td colspan="5" align="right">
								<input class="button" value="WRITE" onclick="location.href='question'">
							</td>
						</tr>
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