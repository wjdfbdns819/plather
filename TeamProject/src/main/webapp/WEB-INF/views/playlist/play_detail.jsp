<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project PLATHER</title>
<link href="${rootPath}/static/css/play_detail.css?ver=2021-06-12-011"
	rel="stylesheet" />
</head>
<body>
	<%@include file="/WEB-INF/views/include/include_header.jspf"%>
	<div class="content">
		<div class="play">
			<h1>플레이리스트</h1>
			<table class="detail">
				<tr>
					<th colspan="3">Psycho</th>
					<th>2021-06-12</th>
				</tr>
				<tr>
					<td colspan="3">조회수 14</td>
					<td>히스토리</td>
				</tr>
				<tr>
					<td colspan="4">
						<p>그래 나쁜 놈 싫은 놈 미친 놈 니 마음대로 불러요
						<p>우린 참 별나고 이상한 사이야
					</td>
				</tr>
				<tr>
					<td>💗</td>
					<td>뒤로가기</td>
					<td>수정</td>
					<td>삭제</td>
				</tr>
			</table>
		</div>

		<div class="songs">
			<h1>노래 목록</h1>
			<table class="song">
				<tr>
					<th>Psycho</th>
					<th>히스토리</th>
				</tr>
				<tr>
					<th>Psycho</th>
					<th>레드벨벳</th>
				</tr>
			</table>
		</div>

		<div class="comment">
			<h1>댓글</h1>
			<table class="input">
				<tr>
					<th>유저</th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th><input placeholder="노래제목"></th>
					<th><input placeholder="가수명"></th>
					<th></th>
				</tr>
				<tr>
					<th colspan="3"><textarea row="5" placeholder="내용"></textarea></th>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td><button>등록</button></td>
				</tr>
			</table>

			<table class="list">
				<tr>
					<th>블루문</th>
					<th>2021-06-12</th>
				</tr>
				<tr>
					<th>Psycho</th>
					<th>히스토리</th>
				</tr>
				<tr>
					<td colspan="2">이 노래 완전 오랜만!</td>
				</tr>

				<tr>
					<th>베이커리</th>
					<th>2021-06-12</th>
				</tr>
				<tr>
					<th>Psycho</th>
					<th>레드벨벳</th>
				</tr>
				<tr>
					<td colspan="2">저 부분 가사 완전 킬링포인트!</td>
				</tr>
			</table>
		</div>
	</div>

	<%@include file="/WEB-INF/views/include/include_footer.jspf"%>
</body>
</html>