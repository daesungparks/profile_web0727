<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/titletext.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css">
<script type="text/javascript " src="${pageContext.request.contextPath}/resources/js/question.js"></script>
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
						<form action ="write" method="post" name ="question_form">
							<tr>
								<td><span class="content_text" >MEMBER ID :</span></td>
								<td><input class="input_box1" type="text" name="qid" value="${sid}" readonly></td>
							</tr>
							<tr>
								<td><span class="content_text" >NAME :</span></td>
								<td><input class="input_box1"type="text" name="qname" value="${memberDto.mname }"></td>
							</tr>
							<tr>
								<td valign=top><span class="content_text" >QUESTION :</span></td>
								<td>
									<textarea class="questiontext" rows="5" cols="25" name="qcontent"></textarea>
								</td>
							</tr>
							<tr>
								<td><span class="content_text" >EMAIL :</span></td>
								<td><input class="input_box1" type="text" name="qemail" value="${memberDto.memail }"></td>
							</tr>
							<tr>
								<td colspan="2" align=center>
									<input class="button" type="button" value="WRITE" onclick ="boardCheck()">&nbsp;
									<input class="button" type="button" value="LIST" onclick="location.href='list'">
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