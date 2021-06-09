<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<%@ include file="/WEB-INF/views/inc/header.jsp" %>


<body>
<!--콘텐츠 시작-->


<%@ include file="/WEB-INF/views/inc/menu.jsp" %>





<div class="booking-all">
	<div class="booking-box">
		<div class="booking-wrap">
			<ul>

				<h2>제품예약 리스트</h2>

				<div class="table-hd">
					<div>
						<input type="text">
						<button>검색</button>

					</div>
				</div>


				<!--if-->
				<li>
					<div class="booking-box">
			
						<div class="thum">
							<a href="<c:url value='/booking/view.do'/>"><img src="${pageContext.request.contextPath}/img/r05.JPG" alt=""></a>
						</div>

						<div class="info">
							<h3>페로니 나스트라 즈로</h3>
							<p>알코올 : 5.1% / 나라 : 이탈리아 맥주 / 용량 : 500ml
								<br>수량 : 10개</p>
							<i>2021-05-05</i>
						</div>
					</div>
				</li>


				<li>
					<div class="booking-box">
			
						<div class="thum">
							<a href="<c:url value='/booking/view.do'/>"><img src="${pageContext.request.contextPath}/img/r07.JPG" alt=""></a>
						</div>

						<div class="info">
							<h3>하이네켄</h3>
							<p>알코올 : 5.0% / 나라 : 네덜란드 맥주 / 용량 : 500ml
								<br>수량 : 10개</p>
							<i>2021-05-05</i>
						</div>
					</div>
				</li>


				<li>
					<div class="booking-box">
			
						<div class="thum">
							<a href="<c:url value='/booking/view.do'/>"><img src="${pageContext.request.contextPath}/img/r02.JPG" alt=""></a>
						</div>

						<div class="info">
							<h3>볼비어 라거</h3>
							<p>알코올 : 5.0% / 나라 : 독일 맥주 / 용량 : 500ml
								<br>수량 : 10개</p>
							<i>2021-05-05</i>
						</div>
					</div>
				</li>
				<!--if end-->


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
				

			</ul>
		</div>
	</div>

</div>











<%@ include file="/WEB-INF/views/inc/footer.jsp" %>

<!--콘텐츠 끝-->
<body>

</html>