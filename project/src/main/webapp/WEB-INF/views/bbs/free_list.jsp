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

		<div class="table-hd">
			<div>
				<input type="text">
				<button>검색</button>

			</div>
		</div>

		<div class="table-list">
			<ul class="tb-hd">
				<li>
					<div class="no">번호</div>
					<div class="subject">제목</div>
					<div class="name">글쓴이</div>
					<div class="date">등록일</div>
				</li>
			</ul>
			<ul class="tb-bd">
				<li>
					<div class="no">4</div>
					<div class="subject"><a href="<c:url value='/bbs/free_view.do'/>">자유게시판 입니다.</a></div>
					<div class="name">관리자</div>
					<div class="date">20-05-05</div>
				</li>

				<li>
					<div class="no">3</div>
					<div class="subject"><a href="<c:url value='/bbs/free_view.do'/>">자유게시판 입니다.</a></div>
					<div class="name">관리자</div>
					<div class="date">20-05-05</div>
				</li>

				<li>
					<div class="no">2</div>
					<div class="subject"><a href="<c:url value='/bbs/free_view.do'/>">자유게시판 입니다.</a></div>
					<div class="name">관리자</div>
					<div class="date">20-05-05</div>
				</li>

				<li>
					<div class="no">1</div>
					<div class="subject"><a href="<c:url value='/bbs/free_view.do'/>">자유게시판 입니다.</a></div>
					<div class="name">관리자</div>
					<div class="date">20-05-05</div>
				</li>
			</ul>
		</div>
		<div class="paging">
			<div>
				<ul>
					<li><a href="#none">처음</a></li>
					<li><a href="#none">이전</a></li>
					<li class="on"><a href="#none">1</a></li>
					<li><a href="#none">2</a></li>
					<li><a href="#none">3</a></li>
					<li><a href="#none">다음</a></li>
					<li><a href="#none">마지막</a></li>
				</ul>
			</div>
		</div>
		<div class="table-btn">
			<div>
				<a href="<c:url value='/bbs/free_write.do'/>">글쓰기</a>
			</div>
		</div>

	</div>

</div>
















<%@ include file="/WEB-INF/views/inc/footer.jsp" %>


<!--콘텐츠 끝-->
</body>

</html>
