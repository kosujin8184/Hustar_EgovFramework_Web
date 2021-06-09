<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

 <c:set var="session" value="${sessionScope.login}" scope="application"/>

<div class="header">
  <!--로고, 메뉴-->
  <div class="header-box">
    <!--로고-->

    <h1><a href="<c:url value='/index.do'/>"><img src="${pageContext.request.contextPath}/img/logo_beer.png"></a></h1>


    <!--상단메뉴 Top Navigator-->
    <div class="tnb">
      	<ul>
               <c:if test="${not empty session}">
               <li><a href="<c:url value='/member/actionLogout.do'/>"><c:out value="${session.name}"/>로그아웃</a></li>
               </c:if>
               <c:if test="${empty session}">
               <li><a href="<c:url value='/member/login.do'/>"><c:out value="${session.name}"/>로그인</a></li>
               </c:if>
               <li><a href="<c:url value='/member/join.do'/>">회원가입</a></li>
         
         </ul>
    </div>


    <!--메인메뉴 General Navigator-->
    <div class="gnb">
      <ul>
        <li><a href="<c:url value='/about/intro.do'/> ">회사소개</a></li>
        <li><a href="<c:url value='/bbs/notice_list.do'/> ">고객센터</a></li>
        <li><a href="<c:url value='/booking/list.do'/> ">예약하기</a></li>
        <li><a href="<c:url value='/booking/mypage.do'/> ">예약확인</a></li>
      </ul>
    </div>


  </div>
</div>





<!--autofixed 클래스 추가 시작, 스크롤시 메뉴고정되게-->
<script>
	$(document).ready(function() {
		$(".header").autofix_anything(); });
</script>