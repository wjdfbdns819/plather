<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PLATHER MAIN</title>
<link href="${rootPath}/static/css/main_home.css?ver=2021-06-12-002"
	rel="stylesheet" />
<style>
article#bn1 {
	background: url("${rootPath}/static/images/bn1.png") no-repeat;
}

article#bn2 {
	background: url("${rootPath}/static/images/bn.png") no-repeat;
}

article#bn3 {
	background: url("${rootPath}/static/images/bn_white.png") no-repeat;
}
</style>
</head>
<body>
	<nav id="main_nav">
		<h1>PLATHER</h1>
		<div>
			<ul>
				<li><a href="${rootPath}/notice">공지사항</a></li>
				<li><a href="${rootPath}/playlist">플레이리스트</a></li>
				<li><a href="${rootPath}/mypage">마이페이지</a></li>
				<li>로그아웃</li>
			</ul>
		</div>
	</nav>
	<section id="banners">
		<article id="bn1"></article>
		<article id="bn2">
			<div>
				<img src="${rootPath}/static/images/001.png" />
			</div>
			<div>
				<img src="${rootPath}/static/images/002.png" />
			</div>
			<div>
				<img src="${rootPath}/static/images/003.png" />
			</div>
		</article>
		<article id="bn3">
			<div>
				<a href="#">공지사항</a>
			</div>
			<table>
				<tr>
					<th>제목</th>
					<th>작성일</th>
				</tr>
				<tr>
					<td>플레이리스트 공유 시 주의사항</td>
					<td>2021-06-10</td>
				</tr>
				<tr>
					<td>지금 이 순간이 우리의 파도라면</td>
					<td>2021-06-09</td>
				</tr>
				<tr>
					<td>두려워 말고 더 힘껏 마주하길</td>
					<td>2021-06-09</td>
				</tr>
				<tr>
					<td>우린 태양 아래 누구보다 더 뜨거우니까</td>
					<td>2021-06-09</td>
				</tr>
				<tr>
					<td>플래더 이용규칙(V1)</td>
					<td>2021-06-08</td>
				</tr>
			</table>
		</article>
	</section>
	<%@include file="/WEB-INF/views/include/include_footer.jspf"%>
</body>
</html>