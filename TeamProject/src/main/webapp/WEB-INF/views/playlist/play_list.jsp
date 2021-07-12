
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project PLATHER</title>
<link href="${rootPath}/static/css/play_insert.css?ver=2021-06-12-005"
	rel="stylesheet" />
</head>
<body>
	<%@include file="/WEB-INF/views/include/include_header.jspf"%>
	<div id="main_container">
      <div class="div_list_title">
        <label class="label_title">플레이리스트 제목</label>
        <input class="content i_title" placeholder="PlayList Title" />
      </div>
      <div class="div_name">
        <label class="lable_name">작성자</label
        ><span class="nickname">nickname</span>
      </div>
      <div class="div_content">
        <label class="lable_content">내용</label>
        <textarea
          name="t_content"
          class="content"
          cols="50"
          rows="4"
        ></textarea>
      </div>
      <div class="list_buttons">
        <button class="btn-save">💾 저장</button>
        <button class="btn-temp-save">💿 임시저장</button>
        <button class="btn-reset">↺ 다시작성</button>
      </div>

      <fieldset>
        <legend>노래추가</legend>
        <form id="add_song">
          <div class="div_song_title">
            <p>
              <label>노래제목</label
              ><input class="content i_song_title" placeholder="노래제목" />
            </p>
          </div>

          <div class="div_singer">
            <p>
              <label>가수</label
              ><input class="content i_singer" placeholder="가수" />
            </p>
          </div>
          <div class="add_buttons">
            <button class="btn_add">➕ 추가</button>
            <button class="btn_cancel">✖ 취소</button>
          </div>
        </form>
      </fieldset>
    </div>
	<%@include file="/WEB-INF/views/include/include_footer.jspf"%>
</body>
</html>