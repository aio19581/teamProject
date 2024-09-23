<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="css/mypageMain.css">
</head>
<body>
	<!-- 로고&타이틀 -->
	<div id="header">
		<div id="title">LOGO</div>
	</div> 
	
	<!-- 내용 -->
	<div id="content">
		<jsp:include page="nav.jsp"></jsp:include>
		<div id="rowdiv" class="row">
	    	<div id="aside" class="col-2 bg-body-secondary">
		    	<div id="profileDiv"class="d-flex justify-content-center">
		    		<div id="profile">
				    	<img src="image/noimage.png">
				    </div>
		    	</div>
		    	
				<div id="nickname">닉네임</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">내가 쓴 글</li>
					<li class="list-group-item">스크랩한 글</li>
					<li class="list-group-item">회원정보 수정</li>
				</ul>
			</div>
			<div class="col" >
				<div id="text">
					<h4>축제정보</h4>
					<div class="d-flex justify-content-start">
						<div class="card position-relative" >
						  <img src="image/noimage.png" class="card-img-top" alt="...">
						  <div class="card-body">
						    <p class="card-text">글제목</p>
						  </div>
						  <div class="position-absolute top-0 end-0">
						  	<button type="button" class="btn-close" aria-label="Close"></button>
						  </div>
						</div>
						<div class="card position-relative" >
						  <img src="image/noimage.png" class="card-img-top" alt="...">
						  <div class="card-body">
						    <p class="card-text">글제목</p>
						  </div>
						  <div class="position-absolute top-0 end-0">
						  	<button type="button" class="btn-close" aria-label="Close"></button>
						  </div>
						</div>
					</div>
				</div>
				<div id="text">
					<h4>커뮤니티</h4>
					<ul class="list-group list-group-flush">
						<li class="list-group-item d-flex justify-content-between">
							글 제목
							<button type="button" class="btn btn-sm btn-outline-danger">삭제</button>
						</li>
						<li class="list-group-item d-flex justify-content-between">
							글 제목
							<button type="button" class="btn btn-sm btn-outline-danger">삭제</button>
						</li>
						<li class="list-group-item d-flex justify-content-between">
							글 제목
							<button type="button" class="btn btn-sm btn-outline-danger">삭제</button>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
			
	<!-- 푸터 -->
	<div id="footer"></div>

</body>
</html>