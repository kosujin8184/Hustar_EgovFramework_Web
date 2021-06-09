<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<div class="footer">
  <!--하단정보-->
  <div>
    <div class="f-logo">
      <h1><a href="<c:url value='/about/intro.do'/> "><img src="${pageContext.request.contextPath}/img/1.png"><span>WORLD BEER</span></a></h1>
    </div>
    <div class="f-copy">
      <p>copyright(c) HUSTAR. All Right Reserved</p>
    </div>
  </div>
</div>


<script>
AOS.init();
</script>