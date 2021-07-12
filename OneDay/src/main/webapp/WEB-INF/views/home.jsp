<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<html>
<head>
<title>Home</title>
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

nav#main_nav {

	margin: auto;
	background-color: gray;
	color: white;
	width: 90%;
}

nav#main_nav ul {
	list-style: none;	
	display: flex;
}

nav#main_nav li {
	padding: 10px 10px;
	font-weight: bold;
}

nav#main_nav ul:first-child {
	margin-left: 50px;
}

nav#main_nav li:nth-of-type(4) {
	margin-left: auto;
}

nav#main_nav ul:last-child {
	margin-right: 50px;
}

nav#main_nav li:hover {
	cursor: pointer;
	background-color: rgba(50,50,50, 0.3);
	border-bottom: 3px solid white;
	transition: 0.3s;
}

h1 {
	background-color: black;
	margin: auto;
	color: white;
	text-align: center;
	padding: 30px;
	font-size: 45px;
	color: white;
	text-align: center;
	padding: 30px;
	font-size: 45px;
	width: 90%;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
	margin-left: auto;
	margin-right: auto;
	margin-top: 30px;
	text-align: center;
	width: 40%;
	
	border: 4px solid black;
	
}

table th {
	background-color:gray;
	padding: 5px 5px;
	color: white;
	border: 2px solid black; 
}

table td {
	
	border: 2px solid black;
	padding: 5px;
}

div.btn_box {
	width: 90%;
	text-align: right;
	position: absolute;
	top: 210px;
	right: 300px;
}

div.btn_box button {
	border:0;
	outline: 0;
	padding:12px 16px;
	border-radius: 5px;
}

button.student_input {
	background-color: blue;
	color: white;
	font-weight: bold;
}

table#sub_table{
	width: 70%;
	border: none;
	border-bottom: 4px solid black ;
}

table#sub_table th {
 border:none;
 border-top: 4px solid black;  
 border-bottom: 4px solid black;  
}

table#sub_table td {
 border: none;
 border-bottom: 2px solid black;
}

div.btn_box2 {
	width: 90%;
	text-align: right;
	position: absolute;
	bottom: 180px;
	right: 250px;

}

div.btn_box2 button {
	border:0;
	outline: 0;
	padding:12px 16px;
	border-radius: 5px;
}


button.score_input {
	background-color: blue;
	color: white;
	font-weight: bold;
}
</style>

</head>
<body>
	<h1>대한고교 성적처리 2021 V1</h1>
	
	<nav id="main_nav">
		<ul>
			<li>Home</li>
			<li>학생정보</li>
			<li>성적일람표</li>
			<li>로그인</li>
		</ul>
	</nav>

	
	<table>
		<tr>
			<th>학번</th><td>2021001</td>
			<th>전공</th><td>컴공과</td>	
		</tr>
		
		<tr>
			<th>이름</th><td>홍길동</td>
			<th>학년</th><td>3</td>
		</tr>			
	</table>
	
	<div class="btn_box">
		<button class="student_input">학생정보 수정</button>
	</div>
	
	<table id="sub_table">
		<tr>
			<th>글번호</th>
			<th>과목명</th>
			<th>점수</th>
		</tr>
		
		<tr>
			<td>1</td>
			<td>국어</td>
			<td>90</td>
		</tr>
		<tr>
			<td>2</td>
			<td>과학</td>
			<td>80</td>
		</tr>
		<tr>
			<td>3</td>
			<td>영어</td>
			<td>60</td>
		</tr>
		
		<tr >
			<td id="total">총점</td><td  id="total">미구현..:(</td><td  id="total">미구현..:(</td>
		</tr>
	</table>
	
	<div class="btn_box2">
		<button class="score_input">성적추가</button>
	</div>
	
</body>
</html>
