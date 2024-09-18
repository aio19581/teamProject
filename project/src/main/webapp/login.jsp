<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="css/login.css">
<script>
window.onload = () => {
	const idInput = document.getElementById("memberId");
	const pwInput = document.getElementById("memberPw");
	idInput.addEventListener('blur', idEmptyCheck);
	pwInput.addEventListener('blur', pwEmptyCheck);
	
	const snsLoginBtn1 = document.getElementById("kakaologin");
	const snsLoginBtn2 = document.getElementById("naverlogin");
	snsLoginBtn1.addEventListener('click',function(){location.href='';});
	snsLoginBtn2.addEventListener('click',function(){location.href='';});
}

function idEmptyCheck(){
	const id = document.getElementById("memberId").value;
	const idempty = document.getElementById("idempty");
	let text = '';
	if(id==''){
		text = "아이디를 입력하세요";
    } else {
    	text = "";
    }
	 idempty.innerText = text;
}

function pwEmptyCheck(){
	const pw = document.getElementById("memberPw").value;
	const pwempty = document.getElementById("pwempty");
	let text = '';
    if(pw==''){
    	text = "비밀번호를 입력하세요";
    } else {
    	text = "";
    }
    pwempty.innerText=text; 
}
</script>
</head>
<body >
<form action="" method="post">
<div class="container">
	<!-- 로고&타이틀 -->
	<div id="header"></div> 
	
	<!-- 내용 -->
	<div id="content">
		
		<div id="title">LOGIN</div>
		
		<!-- id 입력 -->
		<div class="form-floating mb-3">
		  <input type="text" class="form-control" id="memberId" placeholder="ID">
		  <label for="floatingInput">ID</label>
		  <div id="idempty" style="margin : 0px; color:red;"></div>
		</div>
		
		
		<!-- password 입력 -->
		<div class="form-floating mb-3">
		  <input type="password" class="form-control" id="memberPw" placeholder="Password">
		  <label for="floatingInput">Password</label>
		  <div id="pwempty" style="margin : 0px; color:red;"></div>
		</div>
		
		<!--  자동로그인 버튼 -->
		<div class="form-check">
			<input class="form-check-input" type="checkbox" id="remember-me" /> 
			<label for='remember-me'>자동로그인</label>
		</div>

		<!--  로그인 버튼 -->
		<div class="d-grid mx-auto">
			<button type="submit" class="btn btn-primary btn-lg">로그인</button>
		</div>
		
		<!-- 다른 페이지로 이동 -->
		<div class="d-flex justify-content-between">
			<a href="">아이디/비밀번호 찾기</a>
			<a href="">회원가입</a>
		</div>
		
		<!-- SNS로그인 -->
		<hr/>
		<div id="kakaologin" class="d-grid mx-auto d-flex justify-content-center" >
			<img src="image/kakaologo.png" ondragstart='return false' /> 
			<span>카카오 로그인</span>
		</div>
		<div id="naverlogin" class="d-grid mx-auto d-flex justify-content-center" >
			<img src="image/naverlogo.png" ondragstart='return false' /> 
			<span>네이버 로그인</span>
		</div>
		

	</div>
	
	<!-- 푸터 -->
	<div id="footer"></div>
</div>	
</form>
</body>
</html>