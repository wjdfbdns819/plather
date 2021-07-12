<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
* {
	/*초기화*/
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	font-family: 'GmarketSansLight';
}

@font-face {
	/*기본 폰트 설정*/
	font-family: 'GmarketSansLight';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

nav#main_nav {
	/*nav 글씨 크기,두께,위치 설정*/
	background-color: #91c788;
	padding: 22px 15px 20px 15px;
	font-weight: 900;
	font-size: 25px;
	display: flex;
}

header img {
	height: 60px;
}

nav#main_nav ul {
	margin-left: auto;
	list-style: none;
	display: flex;
	color: white;
	padding-right: 20px;
}

</style>
		<nav id="main_nav">
			<header>PLATHER</header>
				<a href="${rootPath}/"><img src="${rootPath}/static/images/LOGO.png" /></a>
			<ul>
				<li>공지사항</li>
				<li>플레이리스트</li>			
				<li>마이페이지</li>
				<li>로그인</li>
			</ul>
		</nav>