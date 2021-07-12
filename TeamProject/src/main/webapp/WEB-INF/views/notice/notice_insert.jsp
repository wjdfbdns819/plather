<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project PLATHER</title>
<link href="${rootPath}/static/css/notice_insert.css?ver=2021-06-15-0105"
	rel="stylesheet" />
</head>
<body>
<%@include file="/WEB-INF/views/include/include_header.jspf"%>


		<div id="main_box">
			<fieldset>
			<legend>공지사항</legend>
			
      		<div class="dv_title">
       			 <label class="lb_title">공지사항 제목</label>
       			 <input class="ip_title" placeholder="제목 입력하세요" />
    		</div>
    		
      		<div class="dv_date">
       			 <label class="lb_date">작성일자</label>
       			 <input type="date" value="mm-yyyy-ss" class="ip_date" />
       	 	</div>
    
  			<div class="dv_content">
  				<label class="lb_content">내용</label>
       			<textarea class="content" cols="50" rows="4"></textarea>	
  			</div>
  			
  			<div class="dv_buttons">
        		<button class="btn_save">💾 저장</button>
        		<button class="btn_reset">↺ 다시작성</button>
     		</div>
     		
  			</fieldset>
  			
  			 
	</div>
	<%@include file="/WEB-INF/views/include/include_footer.jspf"%>
</body>
</html>