<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>


	 <%@ include file = "/WEB-INF/views/include/include_header.jspf" %>
	 <%@ include file = "/WEB-INF/views/include/include_footer.jspf" %>

	
	<a href="${rootPath}/mypage/update"> 마이페이지 수정</a>
	