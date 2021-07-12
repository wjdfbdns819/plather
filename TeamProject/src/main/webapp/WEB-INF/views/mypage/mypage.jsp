<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${rootPath}/static/css/mypage.css?ver=3"
	rel="stylesheet" />
<title>My Page</title>
</head>
<body>
	<%@include file="/WEB-INF/views/include/include_header.jspf"%>
	<div id="main_container">
		<h1 class="main_title">나의 활동</h1>
		<div class="sub_container">
			<div id="info_container">
				<img src="${rootPath}/static/images/profile.png" class="profile">
				<div class="nickname">
					<h5>닉네임</h5>
					<div class="line"></div>
				</div>
				<p class="email">email@email.com</p>
				<div class="buttons">
					<button class="modify">정보수정</button>

				</div>
			</div>
			<div id="right_container">
				<ul class="box_container">
					<li class="playlist box">
						<div class="b-title">My PlayList</div>
						<div class="count">?건</div>
					</li>
					<li class="comment box">
						<div class="b-title">내가 쓴 댓글</div>
						<div class="count">?건</div>
					</li>
					<li class="heart box">
						<div class="b-title">찜한 PlayList</div>
						<div class="count">?건</div>
					</li>
				</ul>

				<div class="search_container">
					<form>
						<p>
							<input placeholder="search"> <img class="search_icon"
								src="${rootPath}/static/images/loupe.png" />
							<button class="btn_search">검색</button>
						</p>
						<div class="table"></div>
						</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="/WEB-INF/views/include/include_footer.jspf"%>
</body>
<script>
	document.querySelector("button.modify").addEventListener("click",(e)=>{
		location.href="${rootPath}/mypage/update"
	})
</script>
</html>