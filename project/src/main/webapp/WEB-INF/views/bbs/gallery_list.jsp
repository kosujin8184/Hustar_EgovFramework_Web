<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- 상단헤더 불러오기 -->
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





<div class="gallery">

	<div class="table-hd">
		<div>
			<input type="text">
			<button>검색</button>
		</div>
	</div>

	<ul>
		<li>
			<div>
				<div class="thum" ><a href="<c:url value='/bbs/gallery_view.do'/>"><img src="${pageContext.request.contextPath}/img/r01.JPG" alt="커밍순"></a></div>
				<div class="info">
						<h3><a href="#none">게시물 제목</a></h3>
						<p>게시물 내용게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용게시물 내용게시물 내용게시물 내용 게시물 내용게시물 내용게시물 내용 게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용</p>
						<i>2020-05-05</i>
				</div>
			</div>
		</li>
		
		<li>
			<div>
				<div class="thum" ><a href="<c:url value='/bbs/gallery_view.do'/>"><img src="${pageContext.request.contextPath}/img/r02.JPG" alt="커밍순"></a></div>
				<div class="info">
						<h3><a href="#none">게시물 제목</a></h3>
						<p>게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 </p>
						<i>2020-05-05</i>
				</div>
			</div>
		</li>
		
		<li>
			<div>
				<div class="thum" ><a href="<c:url value='/bbs/gallery_view.do'/>"><img src="${pageContext.request.contextPath}/img/r03.JPG" alt="커밍순"></a></div>
				<div class="info">
						<h3><a href="#none">게시물 제목</a></h3>
						<p>게시물 내용게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용 게시물 내용게시물 내용게시물 내용게시물 내용</p>
						<i>2020-05-05</i>
				</div>
			</div>
		</li>
		
		<li>
			<div>
				<div class="thum" ><a href="<c:url value='/bbs/gallery_view.do'/>"><img src="${pageContext.request.contextPath}/img/r04.JPG" alt="커밍순"></a></div>
				<div class="info">
						<h3><a href="#none">게시물 제목</a></h3>
						<p>게시물 내용게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 게시물 내용 </p>
						<i>2020-05-05</i>
				</div>
			</div>
		</li>
		
	</ul>


	<div class="table-btn">
		<div>
			<a href="<c:url value='/bbs/gallery_write.do'/>">글쓰기</a>
		</div>
	</div>

</div>
















<%@ include file="/WEB-INF/views/inc/footer.jsp" %>


<!--콘텐츠 끝-->
</body>

</html>
