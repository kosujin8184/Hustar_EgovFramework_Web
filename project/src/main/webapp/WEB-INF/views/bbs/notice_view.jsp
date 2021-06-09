<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>


<body>
<!--콘텐츠 시작-->



<%@ include file="/WEB-INF/views/inc/menu.jsp" %>





<%@ include file="/WEB-INF/views/bbs/submenu.jsp" %>



<div class="notice-wrap">
	<div class="notice-box">
		<div class="bbs-view">

			<div class="view-hd">
				<span><c:out value='${noticeVO.date}' /></span>
				<h2><c:out value='${noticeVO.subject}' /></h2>
				<p>작성자 : <b><c:out value='${noticeVO.writer}' /></b></p>
			</div>

			<div class="view-cont">
				<pre><c:out value='${noticeVO.contents}' /></pre>
			</div>

			<div class="view-file">
				<a href="<c:url value='/bbs/notice_downloadFile.do' />?seq=${noticeVO.seq}"><i class="fa fa-download" aria-hidden="true"></i>${noticeVO.oriFilename}</a>
				<!--<a href="#none"><i class="fa fa-download" aria-hidden="true"></i>  첨부파일 다운로드.jpg</a>-->
			</div>
		</div>

		<div class="table-btn">
			<div>
				<a href="<c:url value='/bbs/notice_list.do'/>" class="lis">목록</a>
				<a href="#none" onclick="javascript:confirmDelete();">삭제</a>
				<a href="<c:url value='/bbs/notice_modify.do'/>?seq=${noticeVO.seq}">수정</a>
			</div>
		</div>

	</div>

</div>













<%@ include file="/WEB-INF/views/inc/footer.jsp" %>


<!--콘텐츠 끝-->


<script>
function confirmDelete(){
	
	if(confirm('삭제하시겠습니까?') == true){
		location.href = '<c:url value="/bbs/notice_delete.do"/>?seq=${noticeVO.seq}';
	}
	
}
</script>

</body>

</html>
