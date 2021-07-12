<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project PLATHER</title>
<link href="${rootPath}/static/css/notice_detail.css?ver=2021-06-12-015"
	rel="stylesheet" />
</head>
<body>
	<%@include file="/WEB-INF/views/include/include_header.jspf"%>
	<div class="content">
		<div class="notice">
			<h1>공지사항</h1>
			<table class="detail">
				<tr>
					<th colspan="3">Dance The Night Away</th>
					<th>2021-06-12</th>
				</tr>
				<tr>
					<td colspan="3">조회수 709</td>
					<td>관리자</td>
				</tr>
				<tr>
					<td colspan="4"><p>You and me in the moonlight 별 꽃 축제 열린 밤
							파도 소리를 틀고 춤을 추는 이 순간 이 느낌 정말 딱야! 바다야 우리와 같이 놀아 바람아 너도 이쪽으로 와 달빛
							조명 아래서 너와 나와 세상과 다 같이 Party all night long, yeah, it's good If
							you wanna have some fun 짭짤한 공기처럼 이 순간의 특별한 행복을 놓치지마 One two
							three, let's go 저 우주 위로 날아갈 듯 춤추러 가 Hey! Let's dance the night
							away Let's dance the night away One two three, let's go 저 바다 건너
							들릴 듯 소리 질러 let's dance the night away Dance the night away Let's
							dance the night away You and me in this cool night 미소 짓는 반쪽 달 그
							언젠가 너와 나 저 달 뒷면으로 가 파티를 열기로 약속 yeah it's good If you wanna have
							some fun 은빛 모래알처럼 이 순간의 특별한 행복을 놓치지 마 오늘이 마지막인 듯 소리 질러 저 멀리 끝없이
							날아오를 듯 힘껏 뛰어 더 높이 오늘이 마지막인 듯 소리 질러 저 멀리 쏟아지는 별빛과 Let's dance the
							night away</td>
				</tr>
				<tr>
					<td>💗</td>
					<td>뒤로가기</td>
					<td>수정</td>
					<td>삭제</td>
				</tr>
			</table>
		</div>
		<div class="comment">
			<h1>댓글</h1>
			<table class="input">
				<tr>
					<th>유저</th>
					<th></th>
				</tr>
				<tr>
					<th colspan="2"><textarea row="5" placeholder="내용"></textarea></th>
				</tr>
				<tr>
					<td></td>
					<td><button>등록</button></td>
				</tr>
			</table>
			<table class="list">
				<tr>
					<th>짱~</th>
					<th>2021-06-12</th>
				</tr>
				<tr>
					<td colspan="2">완전 짱~~~!!~!~!~!~</td>
				</tr>

				<tr>
					<th>dbwjdbwj</th>
					<th>2021-06-12</th>
				</tr>
				<tr>
					<td colspan="2">알겠습니다</td>
				</tr>
			</table>
		</div>
	</div>

	<%@include file="/WEB-INF/views/include/include_footer.jspf"%>
</body>
</html>