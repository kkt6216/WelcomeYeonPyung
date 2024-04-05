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
<title>Main.jsp</title>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<style type="text/css">

  @font-face {
    font-family: 'KyoboHand';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@1.0/KyoboHand.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

body
{
	--tw-bg-opacity: 1;
    background-color: rgba(249, 250, 251, var(--tw-bg-opacity)) !important;
    font-family: 'KyoboHand' !important;
 
   
}

.top
{
	background-image: url(images/top-book.jpg);
    background-position: center;
    background-size: cover;
    min-height: 400px; 
    color: white;
    position: relative;
}

.middle
{
	background-color: #fff;
	
}

.notice-intro
{
	text-align: center;
	font-size: 20px;
	padding: 20px;
}
.notice
{
    background-color: #fff4d2;
    color: #ff8000;
    font-weight: bold;
}

.mid
{
	text-align: center;
	background-image: url(images/top-book.jpg);
    background-position: center;
    background-size: cover;
    min-height: 400px; 
    position: relative;
}

.mid-items
{
    padding: 50px;
    font-size: 30px;
}

.mid-item
{
	padding: 30px;
}

.state
{
	text-align: center;
	display: flex;
    justify-content: center;
    
}

.st-title
{
	font-size: 15px;
	
}

.mid-title
{
	color: white;
}

.state-content
{
	border: 1px solid #adb5bd;
    padding: 20px;
    width: 220px;
    height: 145px;
    background-color: #fff;
}

.st-result
{
	margin-top: 25px;
    font-weight: bold;
}

.st-left{
	border-radius: 15px 0px 0px 15px;
}

.st-right{
    border-radius: 0px 15px 15px 0px;
}

.diary-btn{
    padding: 15px;
    width: 250px;
    background-color: #ffe200;
    border: unset !important;
    border-radius: 20px; 
    
}

	
</style>


<!-- 부트스트랩 js -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script> 
<!-- 제이쿼리 적용 JS -->
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

</head>
<body>

<!-- 헤더영역 -->
<div class="header">
	<c:import url="/Header.jsp"></c:import>
</div>

<div class="notice">
	<div class="notice-intro">[공지사항] 🤖연평이 전용 일지 사이트가 출시 되었어요! 🤗</div>
</div>


<div class="mid">
	<div class="mid-items">
		<div class="mid-item mid-title">
			<div >세상에서 가장 소중한 연평이 성장 일지</div>
		</div>
		<div class="mid-item mid-btn">
			<button class="diary-btn">일기 쓰기</button>
		</div>
		<div class=" mid-item">
			<div class=" state">
				<div class="state-content st-left">
					<div class="st-title">작성된 추억들</div>
					<div class="st-result">30개</div>
				</div>
				<div class="state-content st-right">
					<div class="st-title" >최근 작성 일</div>
					<div class="st-result">2024-04-05</div>
				</div>
			</div>
			
				
		</div>
	</div>	
</div>





<!-- <div>
	<div class="top"></div>
</div> -->



  






</body>
</html>