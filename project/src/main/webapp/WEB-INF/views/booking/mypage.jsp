<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<%@ include file="/WEB-INF/views/inc/header.jsp" %>


<body>
<!--콘텐츠 시작-->


<%@ include file="/WEB-INF/views/inc/menu.jsp" %>







<div class="notice-wrap">
	<div class="notice-box mypage">


	<h2>예약 현황 확인</h2>

		<div class="table-hd">
			<div>
				<input type="text">
				<button>검색</button>

			</div>
		</div>

		<div class="table-list mypage-list">
			<ul class="tb-hd">
				<li>
					<div class="no">번호</div>
					<div class="subject">구매 맥주</div>
					<div class="satate">상태</div>
					<div class="name">글쓴이</div>
					<div class="date">등록일</div>
				</li>
			<ul class="tb-bd">
				<li>
					<div class="no">4</div>
					<div class="subject"><a href="<c:url value='/booking/view.do'/>">하이네켄 4개</a></div>
					<div class="satate">
						<span class="color01">승인</span>
						<!--
						<span class="color02">대기</span>
						<span class="color03">취소</span>
						<span class="color04">반려</span>
						-->
					</div>
					<div class="name">글쓴이</div>
					<div class="date">2021-05-05</div>
				</li>

				<li>
					<div class="no">3</div>
					<div class="subject"><a href="<c:url value='/booking/view.do'/>">테라 10개</a></div>
					<div class="satate">
						<span class="color01">승인</span>
						<!--
						<span class="color01">승인</span>
						<span class="color02">대기</span>
						<span class="color03">취소</span>
						<span class="color04">반려</span>
						-->
					</div>
					<div class="name">글쓴이</div>
					<div class="date">2021-05-04</div>
				</li>

				<li>
					<div class="no">2</div>
					<div class="subject"><a href="<c:url value='/booking/view.do'/>">볼 비어 10개</a></div>
					<div class="satate">
						<span class="color01">승인</span>
						<!--
						<span class="color02">대기</span>
						<span class="color03">취소</span>
						<span class="color04">반려</span>
						-->
					</div>
					<div class="name">글쓴이</div>
					<div class="date">2021-05-03</div>
				</li>

				<li>
					<div class="no">1</div>
					<div class="subject"><a href="<c:url value='/booking/view.do'/>">하이트 1박스</a></div>
					<div class="satate">
						<span class="color01">승인</span>
						<!--
						<span class="color02">대기</span>
						<span class="color03">취소</span>
						<span class="color04">반려</span>
						-->
					</div>
					<div class="name">글쓴이</div>
					<div class="date">2021-05-03</div>
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
				<a href="<c:url value='/booking/list.do'/>">예약하기</a>
			</div>
		</div>

	</div>

</div>









<%@ include file="/WEB-INF/views/inc/footer.jsp" %>

<!--콘텐츠 끝-->
<body>

</html>