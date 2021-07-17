<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${rootPath}/static/css/play_list.css?ver=2021-06-15-002"
	rel="stylesheet" />

</head>
<body>
	<%@include file="/WEB-INF/views/include/include_header.jspf"%>
	<div class="content">
		<div class="play">
			<div class="title"><p>플레이리스트</p><button class="btn_add">&#43; 등록</button></div>
			<div class="select">
				<select>
					<option>조회순</option>
					<option>추천순</option>
					<option>날짜순</option>
				</select>
			</div>
			<table class="list">
				<tr>
					<th>No.</th>
					
					<th>제목</th>
					<th>작성자</th>
					<th>등록일</th>
					
				</tr>
				<c:forEach items="${BOARDLIST}" var="B" varStatus="i">
				<tr data-code="${B.b_code}">
				<td>${i.index+1}</td>
				<td>${B.b_title}</td>
				<td>${B.b_nick}</td><!-- view를 만들어서 작성자 이름받기(나중에 수정) -->
				<td><fmt:formatDate pattern="yyyy-MM-dd" 
                                value="${B.b_date}"/></td>
				</tr>
				
				</c:forEach>
			</table>
		</div>
		<div class="search">
		<form>
			<input/>
			<button>검색</button>
			</form>
		</div>
	</div>
	<%@include file="/WEB-INF/views/include/include_footer.jspf"%>
</body>
<script>
	document.querySelector("button.btn_add").addEventListener("click",(e)=>{
		location.href="${rootPath}/board/insert"
	})
	document.querySelector("table.list").addEventListener("click",(e)=>{
		let target =e.target;
		let tagName = target.tagName;
		if(tagName ==="TD"){
			let b_code = e.target.closest("TR").dataset.code
			//alert(b_code)
			location.href="${rootPath}/board/detail?b_code="+b_code
		}
	})
	
	
</script>
</html>