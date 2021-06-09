<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<%@ include file="/WEB-INF/views/inc/header.jsp" %>


<body>
<!--콘텐츠 시작-->


<%@ include file="/WEB-INF/views/inc/menu.jsp" %>







<div class="contents">
 <!--내용 출력-->


  <!--메인 비주얼-->
  <div class="main-visual">
    <h2 data-aos="fade-up" data-aos-delay="100">언제나 당신 곁에 머물겠습니다.</h2>
    <p>
		<span data-aos="fade-up" data-aos-delay="100">국내 최고의 맥주회사 World Beer 입니다.</span>
		<span data-aos="fade-up" data-aos-delay="100">최단 기간의 배송과 거짓없는 맛을 보장합니다. 지금 확인하세요.</span>
    </p>
  </div>



  <div class="numbers-wrap">
    <div class="numbers">

      <h2 data-aos="fade-up" data-aos-delay="100"><img src="${pageContext.request.contextPath}/img/logo_base.png" >WORLD BEER 2021<img src="${pageContext.request.contextPath}/img/logo_base.png"></h2>
      <p data-aos="fade-up" data-aos-delay="100">2021년 World Beer의 세계 맥주 보유 현황</p>

      <div class="num-data">
        <ul>
          <li>
          <p data-aos="fade-up" data-aos-delay="100">2,435</p>
          <span data-aos="fade-up" data-aos-delay="300">독일 맥주</span>
          </li>

          <li>
          <p data-aos="fade-up" data-aos-delay="100">250</p>
          <span data-aos="fade-up" data-aos-delay="300">맥시코 맥주</span>
          </li>

          <li>
          <p data-aos="fade-up" data-aos-delay="100">536</p>
          <span data-aos="fade-up" data-aos-delay="300">미국 맥주</span>
          </li>

          <li>
          <p data-aos="fade-up" data-aos-delay="100">85</p>
          <span data-aos="fade-up" data-aos-delay="300">한국 맥주</span>
          </li>

          <li>
          <p data-aos="fade-up" data-aos-delay="100">80</p>
          <span data-aos="fade-up" data-aos-delay="300">일본 맥주</span>
          </li>
        </ul>

      </div>

    </div>
  </div>


  <div class="slide-banner">
    <!-- Swiper -->
    <div class="swiper-container">

      <div class="swiper-wrapper">
        <div class="swiper-slide"><img src="${pageContext.request.contextPath}/img/r01.JPG"></div>
        <div class="swiper-slide"><img src="${pageContext.request.contextPath}/img/r02.JPG"></div>
        <div class="swiper-slide"><img src="${pageContext.request.contextPath}/img/r03.JPG"></div>
        <div class="swiper-slide"><img src="${pageContext.request.contextPath}/img/r04.JPG"></div>
        <div class="swiper-slide"><img src="${pageContext.request.contextPath}/img/r05.JPG"></div>
        <div class="swiper-slide"><img src="${pageContext.request.contextPath}/img/r06.JPG"></div>
        <div class="swiper-slide"><img src="${pageContext.request.contextPath}/img/r07.JPG"></div>
        <div class="swiper-slide"><img src="${pageContext.request.contextPath}/img/r08.JPG"></div>
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


    slidesPerView: 3,

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





<div class="main-gallery-wrap">
  <div class="m-g-box">
    <h2>GALLERY</h2>

    <div class="main-gallery">
      <ul>
        <li>
        <div>
          <div class="thum" data-aos="fade-up" data-aos-delay="100">
            <a href="#none">
            <img src="${pageContext.request.contextPath}/img/ger.JPG" alt="" >
            </a>
          </div>

          <div class="info" data-aos="fade-up" data-aos-delay="100">
            <a href="#none">
            <h3>독일 맥주</h3>
            <p>독일 맥주의 맛을 느껴보세요. <br> Germany Beer</p>
            <span>
            <i class="fa fa-eye" aria-hidden="true"><u>Link</u></i>
            </span>
            </a>

          </div>
        </div>
        </li>


        <li>
        <div>
          <div class="thum" data-aos="fade-up" data-aos-delay="100">
            <a href="#none">
            <img src="${pageContext.request.contextPath}/img/kor.JPG" alt="" >
            </a>
          </div>

          <div class="info" data-aos="fade-up" data-aos-delay="100">
            <a href="#none">
            <h3>한국 맥주</h3>
            <p>한국 맥주의 맛을 느껴보세요. <br> Korea Beer</p>
            <span>
            <i class="fa fa-eye" aria-hidden="true"><u>Link</u></i>
            </span>
            </a>

          </div>
        </div>
        </li>


        <li>
        <div>
          <div class="thum" data-aos="fade-up" data-aos-delay="100">
            <a href="#none">
            <img src="${pageContext.request.contextPath}/img/jap.JPG" alt="" >
            </a>
          </div>

          <div class="info" data-aos="fade-up" data-aos-delay="100">
            <a href="#none">
            <h3>일본 맥주</h3>
            <p>일본 맥주의 맛을 느껴보세요. <br> Japan Beer</p>
            <span>
            <i class="fa fa-eye" aria-hidden="true"><u>Link</u></i>
            </span>
            </a>

          </div>
        </div>
        </li>


        <li>
        <div>
          <div class="thum" data-aos="fade-up" data-aos-delay="100">
            <a href="#none">
            <img src="${pageContext.request.contextPath}/img/mex.JPG" alt="" >
            </a>
          </div>

          <div class="info" data-aos="fade-up" data-aos-delay="100">
            <a href="#none">
            <h3>멕시코 맥주</h3>
            <p>멕시코 맥주의 맛을 느껴보세요. </br> Mexico Beer</p>
            <span>
            <i class="fa fa-eye" aria-hidden="true"><u>Link</u></i>
            </span>
            </a>

          </div>
        </div>
        </li>



        <li>
        <div>
          <div class="thum" data-aos="fade-up" data-aos-delay="100">
            <a href="#none">
            <img src="${pageContext.request.contextPath}/img/usa.JPG" alt="" >
            </a>
          </div>

          <div class="info" data-aos="fade-up" data-aos-delay="100">
            <a href="#none">
            <h3>미국 맥주</h3>
            <p>미국 맥주의 맛을 느껴보세요. <br> USA Beer</p>
            <span>
            <i class="fa fa-eye" aria-hidden="true"><u>Link</u></i>
            </span>
            </a>

          </div>
        </div>
        </li>


        <li>
        <div>
          <div class="thum" data-aos="fade-up" data-aos-delay="100">
            <a href="#none">
            <img src="${pageContext.request.contextPath}/img/viet.JPG" alt="" >
            </a>
          </div>

          <div class="info" data-aos="fade-up" data-aos-delay="100">
            <a href="#none">
            <h3>베트남 맥주</h3>
            <p>베트남 맥주의 맛을 느껴보세요. <br> Vietnam Beer</p>
            <span>
            <i class="fa fa-eye" aria-hidden="true"><u>Link</u></i>
            </span>
            </a>

          </div>
        </div>
        </li>


      </ul>
    </div>
  </div>
</div>




<%@ include file="/WEB-INF/views/inc/footer.jsp" %>

<!--콘텐츠 끝-->
<body>

</html>
