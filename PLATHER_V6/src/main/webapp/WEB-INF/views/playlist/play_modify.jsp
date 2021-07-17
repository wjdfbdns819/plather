<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
			<form id="detail" method="post" action="${rootPath}/board/modify">
			<table class="detail">
				<tr>
					<th colspan="3"><input name="b_title" 
					value="${BOARD_DETAIL.b_title}"/></th>
					<th><input readonly="readonly" value='<fmt:formatDate pattern="yyyy-MM-dd"  value="${BOARD_DETAIL.b_date}"/>'/>
					</th>
				</tr>
				<tr>
					<td colspan="3">조회수 14</td>
					<td><input name="b_id" value="${BOARD_DETAIL.b_id}"/></td>
				</tr>
				<tr>
					<td colspan="4">
        				<textarea name="b_content" cols="50" rows="4" >${BOARD_DETAIL.b_content}</textarea>
						
					</td>
				</tr>
				<tr>
					<td>💗</td>
					<td><input name="b_code" value="${BOARD_DETAIL.b_code}" type="hidden"/></td>
				</tr>
			</table>
			<div class="div_button">
					<button class="btn_modify" type="submit">수정</button>
					<button class="btn_back" type="button">뒤로가기</button>
					<button class="btn_list" type="button">목록으로</button>
					</div>
			</form>
		</div>

		<div class="songs">
			<h1>노래 목록</h1>
			<table class="song">
				<c:forEach items="${BOARD_DETAIL.playList}" var="play">
				<tr>
				<th>${play.s_title}</th>
				<th>${play.s_singer}</th>
				</tr>
				</c:forEach>
			</table>
		</div>

	</div>
	<%@include file="/WEB-INF/views/include/include_footer.jspf"%>
</body>
<script>
const btn_list = document.querySelector("button.btn_list")
const btn_back=document.querySelector("button.btn_back")
btn_list.addEventListener("click",()=>{
	location.href="${rootPath}/board"
})
btn_back.addEventListener("click",()=>{
	window.history.back()
	//location.href="${rootPath}/board"
})
</script>
</html>