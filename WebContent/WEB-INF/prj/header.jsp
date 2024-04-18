<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<style type="text/css">

.bg-dark{
	background-color: #ff9e3c !important;
}

.profile-icon{
	font-size: 26px;
	color: #ffffffc2;
	margin-right: 20px;
	
}

.header-menu{
    display: flex;
    align-items: center;
}

.navbar-toggler:focus {
	box-shadow: unset !important;
}


.gg {
    width: 300px;
    border: 1px solid #ff800080 !important;
    border-radius: 5px;
    position: absolute;
    right: 22%;
    z-index: 2;
    margin-top: -0.5%;
}


</style>
<!-- 제이쿼리 적용 JS -->
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">



</script>


</head>
<body>
   
<header data-bs-theme="dark">
  <div class="collapse text-bg-dark" id="navbarHeader">
    <div class="container">
      <div class="row" style="padding-top: 30px;">
        <div class="col">
          <h5>마이페이지</h5>
          <p class="text-body-secondary">- 프로필</p>
          <p class="text-body-secondary">- 그룹 관리</p>
          <p class="text-body-secondary">- 문의 내역</p>
          <p class="text-body-secondary">- 신고 내역</p>
        </div>
        <div class="col">
          <h5>친구</h5>
          <p class="text-body-secondary">- 친구목록</p>
        </div>
        <div class="col">
          <h5>쪽지</h5>
          <p class="text-body-secondary">- 보낸 쪽지</p>
          <p class="text-body-secondary">- 받은 쪽지</p>
        </div>
        <div class="col">
          <h5>고객센터</h5>
          <p class="text-body-secondary">- 자주 묻는 질문</p>
          <p class="text-body-secondary">- 1:1 문의 사항</p>
          <p class="text-body-secondary">- 신고내역</p>
        </div>
      </div>
    </div>
  </div>
  <div class="navbar navbar-dark bg-dark shadow-sm">
    <div class="container">
    	<div>
      		<a href="#" class="navbar-brand d-flex align-items-center">
        		Woori-man
      		</a>
      	</div>
	    <div class="header-menu">
	    	<i class="profile-icon hover-profile bi bi-person-circle"></i>
	      	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
	        	<span class="navbar-toggler-icon"></span>
	      	</button>
      	</div>
    </div>
  </div>
</header>
<div class="gg" >
 <div class="card shadow-sm bd">
     <div class="card-body">
         <div style="display: flex; justify-content: center;">
         	<div style="    height: 60px; width: 65px;">
				<img src="images/basic-profile.png" style="width: 100%; height: 100%;" />
			</div>
        </div>
	        <div class="card-text">이름 : 김경태</div>
	        <div class="card-text">회원번호 : 1234567</div>
	        <div class="card-text">아이디 : kkt6216</div>
	        <div class="card-text">가입일 : 2024-04-16</div>
    </div>
    <div class="profile-button">
	    <div>
	    	<button>내 정보</button>
	    </div>
	     <div>
	    	<button>로그아웃</button>
	    </div>
    </div>
</div>
</div>


  
  
</body>
</html>
























































