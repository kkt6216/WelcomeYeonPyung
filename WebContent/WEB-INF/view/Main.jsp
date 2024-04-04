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

.body
{
	border: 1px solid;
	padding:  30px;
}

.top
{
    height: 250px;
    
}

.top-img
{
	width: 50%;
	height: 100%;

}

.main
{
}

.top-content
{
	 
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


<div class="top">
	<img class="top-img" src="images/top1.jpg" /><img class="top-img" src="images/top.jpg" />
</div>

<div class="main">
	<div>연평 일지</div>
</div>

<!-- 
<div class="body">
	<div class="card" style="width: 18rem;">
	  <img src="..." class="card-img-top" alt="...">
	  <div class="card-body">
	    <h5 class="card-title">Card title</h5>
	    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
	    <a href="#" class="btn btn-primary">Go somewhere</a>
	  </div>
	</div>
</div>
 -->









</body>
</html>