<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project PLATHER</title>
<link href="${rootPath}/static/css/notice_list.css?ver=2021-06-12-002"
	rel="stylesheet" />
</head>
<body>
	<%@include file="/WEB-INF/views/include/include_header.jspf"%>
	<div class="content">
		<div class="notice">
			<p>공지사항</p>
			<table class="list">
				<tr>
					<th>글번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>등록일</th>
					<th>조회수</th>
				</tr>
				<tr>
					<td>2</td>
					<td>플래더 업데이트(V1.0.0)</td>
					<td>관리자</td>
					<td>2021-06-06</td>
					<td>11</td>
				</tr>
				<tr>
					<td>1</td>
					<td>플레더 이용사항</td>
					<td>관리자</td>
					<td>2021-06-05</td>
					<td>8</td>
				</tr>
			</table>
		</div>
		<div class="search">
			<input />
			<button>검색</button>
		</div>
	</div>
	<%@include file="/WEB-INF/views/include/include_footer.jspf"%>
</body>
</html>