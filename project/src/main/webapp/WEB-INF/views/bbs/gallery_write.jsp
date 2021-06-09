<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>


<body>
<!--콘텐츠 시작-->



<%@ include file="/WEB-INF/views/inc/menu.jsp" %>











<div class="snb-wrap">
  <div>
    <ul>
      <li><a href="<c:url value='/bbs/notice_list.do'/>"><span>공지사항</span></a></li>
      <li><a href="<c:url value='/bbs/free_list.do'/>"><span>자유게시판</span></a></li>
      <li class="on"><a href="<c:url value='/bbs/gallery_list.do'/>"><span>갤러리</span></a></li>
    </ul>
  </div>
</div>





<div class="notice-wrap">
	<div class="notice-box">
		

		<div class="bbs-write">
			<div>
				<ul>
					<li>
						<label for="">제목</label>
						<input type="text" placeholder="제목을 입력해 주세요.">
					</li>

					<li>
						<label for="">내용</label>
						<textarea name="" id="" placeholder="내용을 입력하는 부분입니다."></textarea>
					</li>

					<li>
						<label for="">첨부파일 #01</label>
						<input type="file">
					</li>
					<li>
						<label for="">첨부파일 #02</label>
						<input type="file">
					</li>

					<li class="checkbox-wrap">
						<label for="">공지선택</label>
						<input type="checkbox" id="chk-notice"><label for="chk-notice">선택시 공지사항</label>
					</li>
				</ul>
			</div>
		</div>


		<div class="table-btn">
			<div>
				<a href="<c:url value='/bbs/gallery_view.do'/>">이전</a>
				<a href="<c:url value='/bbs/gallery_list.do'/>">완료</a>
			</div>
		</div>

	</div>

</div>















<%@ include file="/WEB-INF/views/inc/footer.jsp" %>


<!--콘텐츠 끝-->
</body>

</html>
