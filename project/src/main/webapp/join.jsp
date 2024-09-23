<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="css/join.css">
</head>
<script>
window.onload = () => {
	const addr = document.getElementById("address");
	addr.addEventListener('click',goPopup);

	const passwordCheck = document.getElementById("memberPwCheck");
	passwordCheck.addEventListener('blur',passCheck);
	
	const joinBtn = document.getElementById("join");
	joinBtn.addEventListener('click',regexCheck);
}

// 주소 검색
function goPopup(){
	const pop = window.open("jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}

function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,zipNo,roadAddrPart2){
	document.getElementById('roadAddrPart1').value = roadAddrPart1;
    document.getElementById('addrDetail').value = addrDetail;
    document.getElementById('zipNo').value = zipNo;
    document.getElementById('roadAddrPart2').value = roadAddrPart2;
}

//유효성 검사
function passCheck(){
	const password = document.getElementById("memberPw");
	const passwordCheck = document.getElementById("memberPwCheck");
	const checkHelp = document.getElementById("pwcheckhelp");
	if (password.value !== passwordCheck.value){
		passwordCheck.parentElement.style.border = "2px solid red";
		checkHelp.style.color="red";
		checkHelp.innerText = "비밀번호가 일치하지 않습니다.";
		return false;
	} else {
		passwordCheck.parentElement.style.border = "1px solid rgb(192, 192, 192)";
		checkHelp.innerText="";
		return true;
	}
}

function regexCheck(){
	const PasswordRegex = /^[a-zA-Z0-9!@#$%^&*]{8,20}$/; //숫자, 영문, 특수문자(!@#$%^&*) 조합 8~20자리
	const birthRegex = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
	const phoneRegex = /^01([0|1|[6-9])([0-9]{3,4})([0-9]{4})$/; 
	
	const password = document.getElementById("memberPw").value; 
	const birth = document.getElementById("birth").value; 
	const phoneNumber = document.getElementById("phoneNumber").value; 
	
	if(!PasswordRegex.test(password)){
		window.alert("비밀번호를 확인해주세요!");
	} else if(!passCheck()){
		window.alert("비밀번호가 일치하지 않습니다.");
	} else if(!birthRegex.test(birth)){
		window.alert("생년월일을 확인해주세요!");
	} else if(!phoneRegex.test(phoneNumber)){
		window.alert("휴대폰번호를 확인해주세요!");
	} else{
		window.href="";
	}
}


</script>
<body>
<div class="container">
	<!-- 로고&타이틀 -->
	<div id="header"></div> 
	
	<div id="content">
	<form id="joinInfo" name="joinInfo" action="/project/join" method="post"></form>
		<label for="memberId">아이디</label> 
		<div class="d-flex justify-content-between">
		    <input type="text" id="memberId" name="memberId" form="joinInfo">
			<button type="submit" class="btn btn-outline-primary btn-sm">중복확인</button>
		</div >
		
		<label for="memberPw">비밀번호</label> 
		<div class="d-flex align-items-center"">
		    <input type="password" name="memberPw" aria-describedby="passwordhelp" form="joinInfo">
		</div >
		<div id="passwordhelp" class="form-text">
		문자, 숫자, 특수문자 포함 8~20자 입력해주세요
		</div>
		
		<label for="memberPwCheck">비밀번호 확인</label> 
		<div class="d-flex align-items-center" >
		    <input type="password" name="memberPwCheck" aria-describedby="pwcheckhelp" >
		</div >
		<div id="pwcheckhelp" class="form-text"></div>
		
		<label for="name">이름</label>
		<div class="d-flex align-items-center">
		    <input type="text" name="name" form="joinInfo">
		</div >
		
		<label for="birth">생년월일</label>
		<div class="d-flex align-items-center">
		    <input type="number" name="birth" aria-describedby="birthhelp" value="" form="joinInfo">
		</div >
		<div id="birthhelp" class="form-text">
		생년월일 8자리 입력해주세요
		</div>
		
		<label for="phoneNumber">휴대전화번호</label> 
		<div class="d-flex align-items-center">
		    <input type="number" name="phoneNumber" aria-describedby="phonenumberhelp" form="joinInfo">
		</div >
		<div id="phonenumberhelp" class="form-text">
		- 제외 11자리 입력해주세요
		</div>
		
		<label for="email">이메일</label> 
		<div class="d-flex justify-content-between">
		    <input type="text" name="email" style="border:none;" form="joinInfo"> @ 
		    <select class="form-select form-select-sm" name="email2" form="joinInfo">
		    	<option hidden="hidden">이메일선택</option>
		    	<option value="naver.com">naver.com</option>
		    	<option value="daum.net">daum.net</option>
		    	<option value="google.com">google.com</option>
		    	<option value="kakao.com">kakao.com</option>
		    </select>
		</div >
				
		<label for="nickName">닉네임</label> 
		<div class="d-flex justify-content-between">
		    <input type="text" id="nickName" name="nickName" form="joinInfo">
			<button type="submit" class="btn btn-outline-primary btn-sm">중복확인</button>
		</div >
		
		<form name="form" id="form" method="post">
			<label for="address">주소</label> 
			<div class="d-flex justify-content-between">
				<input type="hidden" id="confmKey" name="confmKey" value=""  >
				<input type="text" id="zipNo" name="zipNo" readonly="readonly" placeholder="우편번호" form="joinInfo">
				<input type="button" class="btn btn-outline-primary btn-sm"  id="address" value="주소검색">
			</div>
			<div class="d-flex align-items-center">
		    	<input type="text" id="roadAddrPart1" name="roadAddrPart1" readonly="readonly"  placeholder="주소" form="joinInfo">
			</div >
			<div class="d-flex justify-content-start">
		    	<input type="text" id="addrDetail" name="addrDetail" value="" readonly="readonly"  placeholder="상세주소" style="width:40%;" form="joinInfo">
		    	<input type="text" id="roadAddrPart2" name="roadAddrPart2" value="" readonly="readonly"  form="joinInfo">
			</div>
		</form>
		
		<div class="d-grid mx-auto" >
			<button type="submit" class="btn btn-primary btn-lg" id="join" form="joinInfo">회원가입</button>
		</div>
		
	</div>

	<!-- 푸터 -->
	<div id="footer"></div>
	
</div>

</body>
</html>