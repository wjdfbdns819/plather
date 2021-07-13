<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>

	<h1>메인 화면</h1>
	
	<a href="${rootPath}/mypage/update"> 마이페이지 수정</a>
	<a href="${rootPath}/mypage/mypage"> 마이페이지</a>