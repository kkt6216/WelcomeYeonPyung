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
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/MemMain.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/footer.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<style type="text/css">


.top-con{
	max-width: 80% !important;
}

.header{

}

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

.item1{
	text-align: center;
	background-image: url(images/first.jpg);
    background-position: center;
    background-size: cover;
    min-height: 400px; 
    position: relative;
}

.item1-content{
	margin-top: 62px;
    position: absolute;
    margin-left: 355px;
    font-size: 21px;
    font-weight: bold;
    color: #172532;
}

.friend{
	margin-top: 50px;
}

.gg {
    width: 300px;
    height: 200px;
    position: fixed;
    top: 160px;
    right: 160px;
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
   
<div>
	<c:import url="header.jsp"></c:import>
</div>
<div class="notice">
	<div class="notice-intro">[공지사항] 제일 최신 공지사항 띄워주기 🤗</div>
</div>



 
  <div class="album py-5 bg-body-tertiary">
    <div class="container">

		<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
		  <div class="carousel-inner">
		    <div class="carousel-item active" data-bs-interval="10000">
		      <div class="item1 d-block w-100">
		      	<div class="item1-content">
		      		우리만! 을 위한 그룹 일정관리 플랫폼
		      		<br />Woori-man 을 통해 약속 일정을 잡아보세요!
		      	</div>
		      </div>
		    </div>
		   <!--  <div class="carousel-item" data-bs-interval="2000">
		      <img src="..." class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="..." class="d-block w-100" alt="...">
		    </div> -->
		  </div>
		  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Previous</span>
		  </button>
		  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Next</span>
		  </button>
		</div>




		<div class="friend">
				<h2>친구 검색</h2>
				<input type="text" id="friend" class="fr_txt txt" data-bs-toggle="modal" data-bs-target="#exampleModal"  data-bs-whatever="@mdo"  placeholder="아이디 / 닉네임 / 이름 " >
				<button type="button" class="fr_btn"  data-bs-toggle="modal" data-bs-target="#exampleModal"  data-bs-whatever="@mdo" ><i class="bi bi-search"></i></button>
			</div>
			<hr>



		<!-- 친구찾기 영역 -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  	<div class="modal-dialog modal-lg">
			    	<div class="modal-content">
			      		<div class="modal-header">
			        		<h1 class="modal-title fs-5" id="exampleModalLabel">친구</h1>
			        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      		</div>
				      	<div class="modal-body">
				        	<form>
				        		<div class="msg_div">
				        			<span class="friend_msg">※친구 상태인 회원은 검색 결과에 반영되지 않습니다. </span>
				        		</div>
				        		<div>
			        				<label for="recipient-name" class="col-form-label modal-option">친구 검색</label>
			        			</div>
				          		<div class="mb-3 txt_top">
				            		<input type="text" class="form-control" id="shearchValue" name="shearchValue">
				            		<button type="button" class=" btn btn-primary findBtn"> 검색</button>
				          		</div>
				        	</form>
			        		<!-- 검색 결과 -->
			        		<div id="friendAjaxResult">
						        <div id="friendResult">
						        	<table  id="searchTable" class="table tbl"> 
					            		<tr>
					            			<th>회원코드</th>
					            			<th>아이디</th>
					            			<th>이름</th>
					            			<th>친구추가</th>
					            		</tr>
					            		<tr id="searchFriends">
					            			<td colspan="4">
					            				회원코드 또는 아이디 또는 이름으로 검색 해주세요.
					            			</td>
					            		</tr>
					            	</table>
						        </div>
						        <div class="mb-3" >
						            <div  class=" result-title ">
						            	<div class="friend-title modal-option">친구 목록</div>
						            	<table class="table tbl"> 
						            		<tr>
						            			<th>회원코드</th>
						            			<th>아이디</th>
						            			<th>이름</th>
						            			<th>삭제</th>
						            		</tr>
						            		<c:forEach var="friends" items="${friendsList }">
						            			<tr id="result-info">
						            				<td>${friends.us_code2 }</td>
						            				<td>${friends.us_id }</td>
						            				<td>${friends.us_name }</td>
						            				<td>
						            				<button type="button" class="deleteBtn bi-btn" onclick="deleteFriends(${friends.fr_code}, '${friends.us_id }')"><i class="bi bi-trash"></i></button>
						          	 			</td>
							          		</tr>
						            		</c:forEach>
				            			</table>
				            		</div>
		       					</div>
		       				</div>
	   					</div>
			     		<div class="modal-footer">
			        		<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
			      		</div>
		   		 	</div>
		  		</div>
			</div>
		
		

	 	<div style="margin-top: 50px;">
	 		<h2>그룹 목록</h2>
	 		<hr />
	 	</div>


      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <div class="col">
          <div class="card shadow-sm">
          	
            <div class="card-body">
            	<div style=" height: 200px;">
            		<img src="images/cg_car.jpg" style="width: 100%; height: 100%;"/>
            	</div>
	              <div class="card-text">그룹 명: 안녕하세요.</div>
	              <div class="card-text">그룹소개 : 서울 맛집 탐방</div>
	              <div class="card-text">그룹 원 : 15명</div>
     
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">입장하기</button>
                </div>
                <small class="text-body-secondary"><i class="bi bi-heart"></i></small>
              </div>
            </div>
          </div>
        </div>
        
        <div class="col">
          <div class="card shadow-sm">
          	
            <div class="card-body">
            	<div style=" height: 200px;">
            		<img src="images/cg_car.jpg" style="width: 100%; height: 100%;"/>
            	</div>
	              <div class="card-text">그룹 명: 안녕하세요.</div>
	              <div class="card-text">그룹소개 : 서울 맛집 탐방</div>
	              <div class="card-text">그룹 원 : 15명</div>
     
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">입장하기</button>
                </div>
                <small class="text-body-secondary"><img style="width: 35px; height: 35px;" src="images/heart.png" alt="" /></small>
              </div>
            </div>
          </div>
        </div>
        
        
        <div class="col">
          <div class="card shadow-sm">
          	
            <div class="card-body">
            	<div style=" height: 200px;">
            		<img src="images/cg_car.jpg" style="width: 100%; height: 100%;"/>
            	</div>
	              <div class="card-text">그룹 명: 안녕하세요.</div>
	              <div class="card-text">그룹소개 : 서울 맛집 탐방</div>
	              <div class="card-text">그룹 원 : 15명</div>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">입장하기</button>
                </div>
                <small class="text-body-secondary"><img style="width: 35px; height: 35px;" src="images/heart.png" alt="" /></small>
              </div>
            </div>
          </div>
        </div>


       
      </div>
      
        <div class="gg" >
        <div class="card shadow-sm">
            <div class="card-body">
                <div style="height: 200px;">
                    <img src="images/basic-profile.png" style="width: 100%; height: 100%;" />
                </div>
                <div class="card-text">이름</div>
                <div class="card-text">회원번호</div>
                <div class="card-text">아이디</div>
                <!-- 다른 프로필 정보들 -->
                <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                        <button type="button" class="btn btn-sm btn-outline-secondary">입장하기</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
      
      
    </div>
  </div>
  
 <!--  <div class="gg" style="    width: 300px;height: 200px;position: fixed; top: 165px; right: 269px;">
  		<div class="card shadow-sm">
            <div class="card-body">
            	<div style=" height: 200px;">
            		<img src="images/basic-profile.png"" style="width: 100%; height: 100%;"/>
            	</div>
	              <div class="card-text">그룹 명: 안녕하세요.</div>
	              <div class="card-text">그룹소개 : 서울 맛집 탐방</div>
	              <div class="card-text">그룹 원 : 15명</div>
     
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">입장하기</button>
                </div>
               
              </div>
            </div>
          </div>
  </div> -->


	<div>
		<c:import url="MemberFooter.jsp"></c:import>
	</div>



</body>
</html>
    