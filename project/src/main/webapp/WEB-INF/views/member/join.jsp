<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ include file="/WEB-INF/views/inc/header.jsp" %>


<body>
<!--콘텐츠 시작-->



<%@ include file="/WEB-INF/views/inc/menu.jsp" %>












<div class="join-box">

	<h1>회원가입</h1>
	
	<!-- DB에 값을 입력시키기 위해서는 form이 필요하다!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<!-- 각각 nmae=""영역안에는 DB이름과 같아야함 -->
	<form method="post" name="frm" action="<c:url value='/member/joinInsert.do'/>">
	
	<div class="join-form">
		<ul>
			<li>
				<label for="">아이디</label>
				<input type="text" name="id" placeholder="아이디">
				<a href="javascript:checkId();">중복확인</a>
			</li>
			<li>
				<label for="">비밀번호</label>
				<input type="password" name="password" placeholder="비밀번호">
			</li>
			<li>
				<label for="">비밀번호 확인</label>
				<input type="password"  name="password2" placeholder="비밀번호 확인">
			</li>
			<li>
				<label for="">이름</label>
				<input type="text" name="name" placeholder="이름">
			</li>
			<li>
				<label for="">연락처</label>
				<input type="text" name="phone" placeholder="연락처">
			</li>
			<li>
				<label for="">생년월일</label>
				<input type="text" name="birthdate" placeholder="생년월일">
			</li>
			<li class="gender">
				<label for="">성별</label>
				<span>
					<label for="">남</label>
					<input type="radio" name="m">
				</span>
				<span>
					<label for="">여</label>
					<input type="radio" name="w">
				</span>
			</li>
			<li>
				<label for="">직업</label>
				<select name="job">
					<option value=""></option>
					<option value="">학생</option>
					<option value="">회사원</option>
					<option value="">기타</option>
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

		</ul>
		
	</div>
	
	<div class="join-btn">
		<a href="<c:url value='/member/login.do'/>">이전</a>
		<a href="#none" onclick="submitForm();">가입완료</a>
		<!-- <button type="button" onclick="submitForm();">가입완료</button> -->
	</div>
</form>



</div>












<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
<!--콘텐츠 끝-->


<script>
var msg = '<c:out value="${msg}"/>';
if(msg != ''){
	alert(msg);
}

function checkId(){
	var id = document.frm.id.value;
	//alert(id);
	
	$.ajax({
		type : 'POST',
		url : '<c:url value = "/member/checkId.do"/>',
		dataType : 'JSON',
		data : {"id" : id},
		success : function(data) {
			console.log(data); 
			//위 log가 문자열 형태로 나온다면 parse수행
			//var jsonData = JSON.parse(data);	//멤버컨트롤러에서 받은 String형태의 data로 변경
			
			//ID 중복이 됐다면
			if(data.duplicate == true){
				alert("이미 가입된 ID입니다.");
			}
			//ID 중복이 안 됐다면
			else{
				alert("가입 가능한 ID입니다.");
			}
		},
		error : function(jqXHR, textStatus, errorThrown){
			console.log(textStatus);
		}
	});
}




function submitForm(){
	if(document.frm.id.value == ""){
		alert("아이디를 입력해주세요.");
		document.frm.id.focus();
	}
	else if(document.frm.password.value == ""){
		alert("비밀번호를 입력해주세요.");
		document.frm.password.focus();
	}
	else if(document.frm.password2.value == ""){
		alert("비밀번호를 확인 해주세요.");
		document.frm.password2.focus();
	}
	else if(document.frm.password.value != document.frm.password2.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.frm.password2.focus();
	}
	else if(document.frm.name.value == ""){
		alert("이름을 입력해주세요.");
		document.frm.name.focus();
	}
	else{
		document.frm.submit();
	}
}
</script>


</body>

</html>
