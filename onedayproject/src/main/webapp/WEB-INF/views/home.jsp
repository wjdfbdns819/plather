<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	table {
		border-collapse: collapse;
		border-spacing: 0;
		background-color: rgba(0, 0, 0, 0.5);
		margin-left: auto;
		margin-right: auto;
		margin-top: 30px;
		text-align:  center;
		width: 80%;
		border: none;
		border-top: 4px solid black; 
		border-bottom: 4px solid black; 
		
		
		
	}
	
	table th {
		
		padding: 5px 5px;	
		color: white;
		
	 
	}
	
	


</style>
</head>

	
<body>
	<%@include file="/WEB-INF/views/include/include_header.jspf" %>
	<table>
		<tr> 
			<th>학번</th>
			<th>이름</th>
			<th>전공</th>
			<th>학년</th>
			<th>응시과목</th>
			<th>총점</th>
			<th>평균</th>
		</tr>
	</table>

</body>

</html>