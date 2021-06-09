<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>


<body>
<!--콘텐츠 시작-->



<%@ include file="/WEB-INF/views/inc/menu.jsp" %>









<!--fullpage 부분-->
<div id="fullpage">

	<div class="section " id="section0">
		<div class="section00-box"  data-aos="fade-up" data-aos-delay="100">
			<h2></br>어서오세요 환영 합니다.<br></h2>
			<p>여기는 전 세계 맥주를 맛 볼 수있는<br> World Beer 입니다.</br></br></p>


			<div class="small-gal">
				<ul>
					<li>
						<div>
							<img src="${pageContext.request.contextPath}/img/jap.JPG" alt="">
						</div>
					</li>
					<li>
						<div>
							<img src="${pageContext.request.contextPath}/img/ger.JPG" alt="">
						</div>
					</li>
					<li>
						<div>
							<img src="${pageContext.request.contextPath}/img/usa.JPG" alt="">
						</div>
					</li>
				</ul>
				<br><br>
			</div>
			

		</div>
		
	</div>


	<div class="section" id="section1">
	    <div class="section01-box"  data-aos="fade-up" data-aos-delay="100">
			<h2>미션</h2>
			<h1>Mission</h1>
			<p>MAKE LIFE JOYFUL<br><br></p>

			<div class="circle-box">
				<div class="cir">
					<div>
						<h5>고객관점<br><br></h5>
						<p>고객의 삶을<br>즐겁게 하는 즐거움</p>
					</div>

				</div>

				<div class="cir">
					<div>
						<h5>직원&주주<br>&파트너 관점<br></h5>
						<p>맥주를 위해<br>열심히 일하는 즐거움</p>
					</div>
				</div>

				<div class="cir">
					<div>
						<h5>사회&환경관점<br><br></h5>
						<p>맥주 한 잔<br>나누는 즐거움</p>
					</div>
				</div>
			</div>


		</div>
	</div>


	<div class="section" id="section2">
		<div class="section02-box"  data-aos="fade-up" data-aos-delay="100">
			<h2>에센스</h2>
			<h1>Essence</h1>
			<p><img src="${pageContext.request.contextPath}/img/essence-remove.png" alt=""></p>
			<p>고객들이 맥주를 구매함에 있어 보다 즐거울수 있도록</br>세계 맥주의 모든 맛을 가정에서 즐길 수 있도록 도와주는 World Beer<br><br></p>
		</div>
		
	</div>

	<div class="section" id="section3">
		<div class="section03-box"  data-aos="fade-up" data-aos-delay="100">
			<h2>비전</h2>
			<h1>Vision</h1>
			<p><img src="${pageContext.request.contextPath}/img/logo_base.png" alt=""></p>
			<p>모든 어른들의 삶을 즐겁게하는</br>글로벌 No.1 맥주기업으로 도약<br><br></p>
		</div>
	</div>


</div>



<!--fullpage호출 Script-->
<script type="text/javascript">
    var myFullpage = new fullpage('#fullpage', {
        anchors: ['firstPage', 'secondPage', '3rdPage', '4thpage'],
        sectionsColor: ['#C63D0F', '#1BBC9B', '#7E8F7C', '#fe8e60'],
        scrollBar: true
    });
</script>



<%@ include file="/WEB-INF/views/inc/footer.jsp" %>


<!--콘텐츠 끝-->
<body>

</html>