<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	String code = (String)session.getAttribute("code");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버 메인</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/MemberMain.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/footer.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<style type="text/css">


.notice-intro
{
	text-align: center;
	font-size: 20px;
	padding: 15px;
}
.notice
{
    background-color: #fff4d2;
    color: #ff8000;
    font-weight: bold;
}


.top
{
}

.main{
}

.side{
}

.body{
	max-width: 85% !important;
	margin-top: 50px;
}

.group-item{
    width: 255px;
    height: 360px;
    border: 1px solid;
}

body{
	background-color: #f7f8fd3d
}


 
</style>

 <!-- 부트스트랩 js -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script> 
<!-- 제이쿼리 적용 JS -->
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

function enterGroup(cg_code)
{
	//alert("확인");
	
	// 그룹 코드를 잘 받아오는지 확인
	//alert(cg_code);
	
	$(location).attr("href", "entergroup.woori?cg_code="+cg_code);
	
	
}


//친구 찾기 ajax 처리
$(document).ready(function()
{
	
	/* var delCount = '${delCount}';
	var addCount = '${addCount}';
	
	if (delCount == 1 || addCount == 1)
	{
		$(".modal").modal("show");	
	}
	 */
	
	$(".findBtn").click(function()
	{
		
		var shearchValue = $("#shearchValue").val();
		var params = "shearchValue="+shearchValue;
		
		
		 $.ajax({
	            type: "GET"
	            , url: "findfriends.woori"
	            , data: params
	            , success: function(args)
				{
	            	document.getElementById("searchTable").innerHTML = args;
				}
		 		, error: function(e)
				{
					alert(e.responseText);
				}
	           
	        });		
	});
	
});

//  즐겨찾기
function bookmark(gm_code, gb_code)
{
	//$(location).attr("href", "bookmark.woori?gb_code=" + gb_code + "&gm_code=" + gm_code);
	
	var params = "gm_code="+gm_code+"&gb_code="+gb_code;
	//alert(params);
	
	 $.ajax({
         type: "GET"
         , url: "bookmark.woori"
         , data: params
         , success: function(args)
			{
         		document.getElementById("my_gr").innerHTML = args;
			}
	 		, error: function(e)
			{
				alert(e.responseText);
			}
        
     });	
	
	
	
}


// 친구 삭제
function deleteFriends(fr_code, us_id)
{
	if (confirm(us_id + "님을 삭제 하시겠습니까?"))
	{
		var params = "fr_code="+fr_code;
		
		document.getElementById("shearchValue").value = "";
		
		 $.ajax({
	         type: "GET"
	         , url: "deletefriend.woori"
	         , data: params
	         , success: function(args)
				{
	        	 	
	         		document.getElementById("friendAjaxResult").innerHTML = args;
				}
		 		, error: function(e)
				{
					alert(e.responseText);
				}
	        
	     });	
	}
}

// 친구 추가
function addFriends(us_code2)
{
	var us_id = $("#id").val();
	
	//alert(us_code2);
	//alert(us_id);
	
	if (confirm(us_id + "님을 친구추가 하시겠습니까?"))
	{
		var params = "us_code2="+us_code2;
		//alert(params);
		
		document.getElementById("shearchValue").value = "";
		
		 $.ajax({
	         type: "GET"
	         , url: "addfriend.woori"
	         , data: params
	         , success: function(args)
				{
	         		document.getElementById("friendAjaxResult").innerHTML = args;
				}
		 		, error: function(e)
				{
					alert(e.responseText);
				}
	        
	     });	
	}
}



</script>


</head>
<body>
   


  
<div class="header ">
	<c:import url="MemberHeader.jsp"></c:import>
</div>

<div class="top_bar">
	<div class="bar-item">
		<a href="user.woori">프로필</a>
	</div>
	<div class="bar-item">
		<a href="friends.woori">친구</a>
	</div>
	<div class="bar-item">
		<a href="notelist.woori">쪽지</a>
	</div>
	<div class="bar-item">
		<a href="cs.woori">고객센터</a>
	</div>
</div>

<div class="notice">
	<div class="notice-intro">[공지사항] 제일 최신 공지사항 띄워주기 🤗</div>
</div>

<div class="body container">
	<div class="row ">
		<div class="main col-9">
			<h4>투표 진행중인 모임</h4>
			<div></div>
			
			<div id="my_gr" class="my_gr">
				<h2>내 그룹</h2>
				<hr>
					<div id="groups" class="group_list row">
						<div class="group col-3">
							<div class="gr_option">
								<div class="make_gr">
									<button class="createBtn" onclick="location.href='creategroupform.woori'"><i class="bi bi-plus-circle-fill"></i></button>
									<br>
									만들기
								</div>
							</div>
						</div>
						<div class="group col-3">
							<form action="" method="post">  
								<div  class="gr_option" >
									<div class="gr_img">
										<img onclick="enterGroup(${list.cg_code})" src="images/main.jpg">
									</div>
									<div class="gr_name">
										<div class="explain" onclick="enterGroup(${list.cg_code})">							
											<span>그룹명 :</span>
											<span class="group_count" >그룹원 : 명</span>
										</div>
										<div id="bookmark-zone" class="bookmark_zone">
										</div>
									</div>
								</div>
							</form>
						</div>
						<div class="group col-3">
							<form action="" method="post">  
								<div  class="gr_option" >
									<div class="gr_img">
										<img onclick="enterGroup(${list.cg_code})" src="${list.cg_profile }">
									</div>
									<div class="gr_name">
										<div class="explain" onclick="enterGroup(${list.cg_code})">							
											<span>그룹명 :</span>
											<span class="group_count" >그룹원 : 명</span>
										</div>
										<div id="bookmark-zone" class="bookmark_zone">
										</div>
									</div>
								</div>
							</form>
						</div>
						<div class="group col-3">
							<form action="" method="post">  
								<div  class="gr_option" >
									<div class="gr_img">
										<img onclick="enterGroup(${list.cg_code})" src="${list.cg_profile }">
									</div>
									<div class="gr_name">
										<div class="explain" onclick="enterGroup(${list.cg_code})">							
											<span>그룹명 :</span>
											<span class="group_count" >그룹원 : 명</span>
										</div>
										<div id="bookmark-zone" class="bookmark_zone">
										</div>
									</div>
								</div>
							</form>
						</div>
						
					</div>
				</div>
			</div>	
			
		<div class="side col-3">
			<div style="padding: 20px;">
				<c:import url="MemberProfile.jsp"></c:import>
			</div>
			<div>
				<c:import url="MemberSideBar.jsp"></c:import>
			</div>
		</div>
		
		</div>
	
</div>




    

</body>
</html>
    