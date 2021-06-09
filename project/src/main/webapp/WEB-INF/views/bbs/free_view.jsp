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
      <li class="on"><a href="<c:url value='/bbs/free_list.do'/>"><span>자유게시판</span></a></li>
      <li><a href="<c:url value='/bbs/gallery_list.do'/>"><span>갤러리</span></a></li>
    </ul>
  </div>
</div>



<div class="notice-wrap">
	<div class="notice-box">
		<div class="bbs-view">

			<div class="view-hd">
				<span>등록일 : 2021-04-27</span>
				<h2>자유게시판내용 입니다. 열심히 하겠습니다!</h2>
				<p>작성자 : <b>관리자</b></p>
			</div>

			<div class="view-cont">
				<p>자유게시판 작성 후 출력 되는 페이지 입니다.</p>
				<p>자유게시판 작성은 textarea로 작성이 되었습니다.</p>
			</div>

			<div class="view-file">
				<a href="#none"><i class="fa fa-download" aria-hidden="true"></i>  첨부파일 다운로드.jpg</a>
				<a href="#none"><i class="fa fa-download" aria-hidden="true"></i>  첨부파일 다운로드.jpg</a>
			</div>
		</div>

		<div class="table-btn">
			<div>
				<a href="<c:url value='/bbs/free_list.do'/>" class="lis">목록</a>
				<a href="#none" class="del">삭제</a>
				<a href="#none" class="mod">수정</a>
			</div>
		</div>

	</div>

</div>
















<%@ include file="/WEB-INF/views/inc/footer.jsp" %>


<!--콘텐츠 끝-->
</body>

</html>
