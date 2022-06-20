<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Tiro+Devanagari+Sanskrit:ital@1&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Heebo:wght@500&display=swap" rel="stylesheet">
	
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/resources/css/animate.min.css" rel="stylesheet">
   <link href="/resources/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
    
   
   
   <!-- jQuery UI toolTip 사용 CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- jQuery UI toolTip 사용 JS-->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
  
  <style>

        .bi-heart{
            font-size: 15px;
            line-height: 15px;
            color:#000;
        }

        .bi-heart-fill{
            font-size: 15px;
            line-height: 15px;
             color:#000;
        }
.bi-heart-fill::before{
color:crimson;
}

.bi-heart::before{
color:crimson;
}
</style>

<style>

div.container {
	padding-top: 200px;
	
}

body {
	padding-top: 50px;
	
}

.page-header.text-info {
	font-family: 'Gowun Batang', serif;
	font-weight: bold;
	color: #75574B
}
.emptyHeart{
	padding : 90px;
	height: 200px;
	text-align: center;
	font-weight: bold;
	color: #808080;
}

.text-info {
	font-family: 'Gowun Batang', serif;
	font-weight: bold;
	color: #75574B
}

.row {
	font-family: 'Gowun Batang', serif;
}

.table.table-hover.table-striped {
	font-family: 'Gowun Batang', serif;
}

.ref-sort{display:block; margin-bottom:50px; text-align:center;}
.ref-sort ul{margin:0; padding:0; list-style:none; text-transform:uppercase; 	font-family: 'Gowun Batang', serif;
}
.ref-sort li{display:inline-block; position:relative; margin:0 10px 0 0; padding:0 20px 0 0;}
.ref-sort li::after{position:absolute; top:0; right:0; content:"/";}
.ref-sort li:last-child{margin:0; padding:0;}
.ref-sort li:last-child::after{display:none;}
.ref-sort li a{}

/* References */
.ref-sort li a{color:inherit;}
.ref-sort li a:hover, #references .ref-sort li.current a{color:#829DA2;}

.sectiontitle, #introblocks ul, #references .ref-sort{text-align:left;}

.sectiontitle{display:block; max-width:55%; margin:0 auto 80px; text-align:center;}
.sectiontitle .heading{margin:0; padding:0; line-height:1;}

.sectiontitle{max-width:none; margin-bottom:50px;}

.sectiontitle, #introblocks ul, #references .ref-sort{text-align:left;}

.imgover:hover::before{background:rgba(130,157,162,.5);/* #829DA2 */}
.imgover, .imgover:hover::after{color:#333333;} 

/* Latest */
.excerpt time{border-color:#D7D7D7;}

#latest article{max-width:348px;}

#footer{padding-bottom:50px;}/* Not required, just looks a little better */
.latestimg > li{display:inline-block; float:none; width:auto; margin:0 5% 5% 0;}
.latestimg > li img{width:auto;}

* Latest
--------------------------------------------------------------------------------------------------------------- */
#latest{}

#latest > li:last-child{margin-bottom:0;}/* Used when elements stack in small viewports */
article{}
article img{width:100%;}/* Force the image to have the full width of parent at all times */
.excerpt{padding:30px 0 0;}
.excerpt time{display:block; margin:0 0 30px 0; padding:0 0 15px 0; font-style:normal; font-size:.8rem; line-height:1; border-bottom:1px solid;}
.excerpt time i{margin-right:5px;}
.excerpt .heading{margin:0 0 10px 0; font-size:1.3rem;}
.excerpt .meta{margin:0 0 30px 0; padding:0; list-style:none; text-align:left;}
.excerpt .meta li{display:inline-block; font-size:.8rem;}
.excerpt .meta li::after{margin-left:5px; content:"|";}
.excerpt .meta li:last-child::after{margin:0; content:"";}
.excerpt p{}
.excerpt footer{margin-top:30px;}

.latestimg{}
.latestimg > li{display:inline-block; float:left; width:30%; margin:0 0 5% 5%;}
.latestimg > li:nth-last-child(-n+3){margin-bottom:0;}/* Removes bottom margin from the last three items - margin is restored in the media queries when items stack */
.latestimg > li:nth-child(3n+1){margin-left:0; clear:left;}/* Removes the need to add class="first" */
.latestimg > li img{width:100%;}/* Force the image to resize to take the full space - may have to be changed for tablets, depends on personal preference */
.latestimg > li a.imgover{display:block;}

.carousel-inner > .item > img {
  top: 0;
  left: 0;
  min-width: 100%;
  max-height: 500px;
} 

/* [cook LIST] 폰트 적용 */
.wrapper{
font-family: 'Tiro Devanagari Sanskrit', serif;
}

/* 검색, 정렬조건 css */
.condition{
font-family: 'Gowun Batang', serif;
width: 100px;
float:right;
border-color:#D7D7D7;
}


/* 레시피 등록 버튼 css */
.submit
 {
  display: block;
  border: none;
  width: 150px;
  height: 36px;
  border-radius: 30px;
  color: #fff;
  font-size: 15px;
  cursor: pointer;
  margin-top: 20px;
  margin-bottom: 20px;
  background: #d4af7a;
  float: right;
  	font-family: 'Gowun Batang', serif;
  
}

/* 레시피등록 버튼이랑 hr이랑 충돌=> margin-top:20px에서 60px로 변경해서 수정*/
hr {
    margin-top: 60px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
}

/* 전체 건수 표기시 레시피등록 버튼과 간격 조절 margin: 10px 0 0 에서 0 0 0으로 변경 */
p {
    margin: 0 0 0px;
}

</style>


<!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		 
		 $(function() {
			
					$( ".imgover" ).on("click" , function() {
					console.log($(this).attr("value"));
					self.location ="/cook/getCook?cookNo="+$(this).attr("value")
					});
					
					$(".submit").on("click" , function() {
						
						
						var checkCount = $("input[name='ckBookmark']:checked").length;

					    var array = new Array();
					    
						$("input[name='ckBookmark']:checked").each(function() {
							array.push($(this).attr('id'));
					    });
						

						
					});
//=========================좋아요==========================					
					$( "p.like_btn" ).on("click" , function(){
						//var cookNo = $(this).attr("value");
						var userId = $("input[name='userId']").val();
						var cookNo = $(this).attr("value");
						
						console.log(cookNo);
						console.log(userId);
					     $.ajax({
					            type : "POST",  
					            url : "/heart/json/updateHeart",       
					            dataType : "json",   
					            data : {'cookNo' : cookNo, 'userId' : userId },
					            error : function(){
					               alert("통신 에러");
					            },
					            success : function(heartCheck) {
					                
					                    if(heartCheck == 0){
					                    	alert("추천완료.");
					                    	  
					                       
					                    	location.reload();
					                    }
					                    else if (heartCheck == 1){
					                     alert("추천취소");
					                   
					                  
					                    	location.reload();

					                    
					                }
					            }
					        })
					 });					
					
//=====================================================					
					
					
					
					
					
		 });
		 
					
</script>
			 </head>

<body>

	
	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	
<div class="container">
<!-- ################################################################################################ -->

	<div class="wrapper row3">
		  <section class="hoc container clear"> 
		    <div class="center btmspace-50">
		    <br/>
		      <h3 class="font-x2 nospace" align="center"><br>| MY COOKINGCLASS | </h3>
		      <p align="right">전체 ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage} 페이지</p>
		    </div>
		    		  
		    
		  
		    
		    <br/><hr/><br/>
    </section>
  	</div>
 
 <input type="hidden" id="currentPage" name="currentPage" value="1"/>
   <input type="hidden" name="userId" value="${user.userId}">
  <input type="hidden" name="cookNo" value="${cook.cookNo}">
 
<div class="row">
	<c:set var="i" value="0" />
	<c:forEach var="list" items="${list}">
  <div class="col-sm-6 col-md-3">
  <br/> <br/>
  
    <div id="latest" class="group">
 

      <article class="one_third first">
      <a class="imgover" value="${list.cook.cookNo }" href="#"><c:choose>
		    	<c:when test="${list.cook.cookFilename.contains('/')}">
						<c:choose>
						<c:when test="${list.cook.cookFilename.contains('mp4')}">
							<c:forEach var="name" items="${list.cook.cookFilename.split('/')}">
								<video width="320" height="300" controls autoplay src="/resources/images/uploadFiles/${name}" type="video/mp4"  value="${name}"></video>
							</c:forEach>
						</c:when>
						
						<c:otherwise>
							<c:forEach var="name" items="${list.cook.cookFilename.split('/')}">
								<img src="/resources/images/uploadFiles/${name}" width="320" height="300" align="absmiddle"/>
								<input type="hidden" name="image" value="${name }"/>
							</c:forEach>
						</c:otherwise>
						</c:choose>
				</c:when>
				<c:otherwise>
					<img src="/resources/images/uploadFiles/${list.cook.cookFilename}" width="320" height="300" align="absmiddle" class="image" value="${prodThumbnail}"/>
				</c:otherwise>
		    	</c:choose></a>
        <div class="excerpt">
          <h4 class="heading" >${list.cook.cookName }</h4>
           <h6 >${list.cook.cookBrief }</h6>
          <ul class="meta">
           
            <li ><strong>모집인원 : ${list.cook.cookRecruit } 명</strong></li>
            <li>
            <c:if test = "${list.cook.cookTheme =='KO'}">
			 <strong>테마 : 한식</strong>
			</c:if>
			<c:if test = "${list.cook.cookTheme == 'JA'}">
			 <strong>테마 : 일식</strong>
			</c:if>
			<c:if test = "${list.cook.cookTheme == 'AM'}">
		   <strong>테마 : 양식</strong>
			</c:if>
			<c:if test = "${list.cook.cookTheme == 'CH'}">
			 <strong>테마 : 중식</strong>
			</c:if>
			<c:if test = "${list.cook.cookTheme == 'DE'}">
			 <strong>테마 : 간식</strong>
			</c:if>		</li>
             <li>&emsp;&emsp;<p align="right" class="bi bi-heart-fill like_btn" value="${list.cook.cookNo}" id="like_btn">&nbsp; </p>
        </li>

          </ul>
          </div>
      </article>
     
   <!-- ################################################################################################ -->
    </div>
  </div>
  
  </c:forEach>
  
     
</div>
   <c:if test="${empty list}">
		<br><br>
		<div class="emptyHeart">
			좋아요한 쿠킹클래스가 없습니다.
		</div>
		<br>
	</c:if>
     
	  </div>
 	<!--  화면구성 div End /////////////////////////////////////-->
 	
 	<!-- PageNavigation Start... -->
	<!-- PageNavigation End... -->
	
</body>

</html>