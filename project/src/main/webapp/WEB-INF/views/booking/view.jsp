<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<%@ include file="/WEB-INF/views/inc/header.jsp" %>


<body>
<!--콘텐츠 시작-->


<%@ include file="/WEB-INF/views/inc/menu.jsp" %>







<div class="booking-view">
	<div class="booking-box">
		
		<h2>제품예약 상세보기</h2>

		<div class="table-hd">
			<div>
				<input type="text">
				<button>검색</button>

			</div>
		</div>
			

		<div class="calendar-wrap">

			<div class="view-photo">
				<!--배너-->
				<div class="slide-banner">
				<!-- Swiper -->
				<div class="swiper-container">

				  <div class="swiper-wrapper">
					<div class="swiper-slide"><img src="${pageContext.request.contextPath}/img/r05.JPG"></div>
					<div class="swiper-slide"><img src="${pageContext.request.contextPath}/img/r07.JPG"></div>
					<div class="swiper-slide"><img src="${pageContext.request.contextPath}/img/r02.JPG"></div>
				  </div>


				  <!-- Add Pagination -->
				  <div class="swiper-pagination"></div>


				  <!-- Add Arrows -->
				  <div class="swiper-button-next"></div>
				  <div class="swiper-button-prev"></div>

				</div>


				<!-- Initialize Swiper -->
				<script>
				var swiper = new Swiper('.swiper-container', {


				slidesPerView: 1,

				navigation: {
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',
				},

				pagination: {
				el: '.swiper-pagination',
				},

				autoplay: {
				delay: 2000,
				disableOnInteraction: false,
				},

				});
				</script>

			  </div>
			</div>





			<div class="calendar-box">
				<!--달력-->
				<div class="cal-hd">
					<span><a href="#none">이전달</a></span>
					<span><h4>2021.05</h4></span>
					<span><a href="#none">다음달</a></span>

				</div>

				<div class="cal-bd">
					<ul class="style01">
						<li><a href="#none"><span>일</span></a></li>
						<li><a href="#none"><span>월</span></a></li>
						<li><a href="#none"><span>화</span></a></li>
						<li><a href="#none"><span>수</span></a></li>
						<li><a href="#none"><span>목</span></a></li>
						<li><a href="#none"><span>금</span></a></li>
						<li><a href="#none"><span>토</span></a></li>
					</ul>

					<ul>
						<li class="off"><a href="#none"><span>25</span></a></li>
						<li class="off"><a href="#none"><span>26</span></a></li>
						<li class="off"><a href="#none"><span>27</span></a></li>
						<li class="off"><a href="#none"><span>28</span></a></li>
						<li class="off"><a href="#none"><span>29</span></a></li>
						<li class="off"><a href="#none"><span>30</span></a></li>
						<li><a href="#none"><span>1</span></a></li>
					</ul>

					<ul>
						<li><a href="#none"><span>2</span></a></li>
						<li class="today"><a href="#none"><span>3</span></a></li>
						<li><a href="#none"><span>4</span></a></li>
						<li><a href="#none"><span>5</span></a></li>
						<li class="selected"><a href="#none"><span>6</span></a></li>
						<li><a href="#none"><span>7</span></a></li>
						<li><a href="#none"><span>8</span></a></li>
					</ul>

					<ul>
						<li><a href="#none"><span>9</span></a></li>
						<li><a href="#none"><span>10</span></a></li>
						<li><a href="#none"><span>11</span></a></li>
						<li><a href="#none"><span>12</span></a></li>
						<li><a href="#none"><span>13</span></a></li>
						<li><a href="#none"><span>14</span></a></li>
						<li><a href="#none"><span>15</span></a></li>
					</ul>


					<ul>
						<li><a href="#none"><span>16</span></a></li>
						<li><a href="#none"><span>17</span></a></li>
						<li><a href="#none"><span>18</span></a></li>
						<li><a href="#none"><span>19</span></a></li>
						<li><a href="#none"><span>20</span></a></li>
						<li><a href="#none"><span>21</span></a></li>
						<li><a href="#none"><span>22</span></a></li>
					</ul>
					
					
					<ul>
						<li><a href="#none"><span>23</span></a></li>
						<li><a href="#none"><span>24</span></a></li>
						<li><a href="#none"><span>25</span></a></li>
						<li><a href="#none"><span>26</span></a></li>
						<li><a href="#none"><span>27</span></a></li>
						<li><a href="#none"><span>28</span></a></li>
						<li><a href="#none"><span>29</span></a></li>
					</ul>

					<ul>
						<li><a href="#none"><span>30</span></a></li>
						<li><a href="#none"><span>31</span></a></li>
						<li class="off"><a href="#none"><span>1</span></a></li>
						<li class="off"><a href="#none"><span>2</span></a></li>
						<li class="off"><a href="#none"><span>3</span></a></li>
						<li class="off"><a href="#none"><span>4</span></a></li>
						<li class="off"><a href="#none"><span>5</span></a></li>
					</ul>
				</div>
		
					
			</div>

		</div>
	




		<div class="num">
			<li>
				<label for="">종류</label>
				<select name="" id="" style="width:130px">
					<option value="">하이트</option>
					<option value="">카스</option>
					<option value="">하이네켄</option>
					<option value="">삿포로</option>
					<option value="">테라</option>
					<option value="">버드와이저</option>
					<option value="">볼 비어</option>
					<option value="">필스너 우르켈</option>
					<option value="">호가든</option>
					<option value="">1906</option>
					<option value="">크롬바커 필스</option>
				</select>
			</li>

			<li>
				<label for="">개수 </label>
				<select name="" id="" style="width:130px">
					<option value="">1개</option>
					<option value="">2개</option>
					<option value="">3개</option>
					<option value="">4개</option>
					<option value="">5개</option>
					<option value="">6개</option>
					<option value="">7개</option>
					<option value="">8개</option>
					<option value="">9개</option>
					<option value="">10개</option>
					<option value="">1박스</option>
					<option value="">2박스</option>
					<option value="">3박스</option>
				</select>
			</li>

			<li class="addr">
				<label for="">주소</label>
				<span class="zipcode">
					<input type="text"><button>검색</button>
				</span>
				<span>
					<input type="text" placeholder="기본주소">
				</span>
				<span>
					<input type="text" placeholder="상세주소">
				</span>
			</li>
		</div>
	



		<div class="view-btn">
			<a href="<c:url value='/booking/list.do'/>">이전으로</a>
            <a href="<c:url value='/booking/list.do'/>">예약하기</a>
        </div>

        <div class="view-detail">
            <p>예약 제품 상세설명 입니다.</p>
        </div>

	</div>
</div>









<%@ include file="/WEB-INF/views/inc/footer.jsp" %>

<!--콘텐츠 끝-->
<body>

</html>