<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

	
	
<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>

<html lang="ko">
	
<head>
<meta charset="EUC-KR">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>

<!-- JAVASCRIPTS -->
<script src="/resources/javascript/jquery.min.js"></script>
<script src="/resources/javascript/jquery.backtotop.js"></script>
<script src="/resources/javascript/jquery.mobilemenu.js"></script>

</head>
<title>식탁의온도</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="/resources/css/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper">
<jsp:include page="/layout/toolbar.jsp" />
</div>
<!-- ################################################################################################ -->
<%--
<div class="" style="background-image:url('/resources/images/homedeco/main32.jpg');">
  <div id="pageintro" class="hoc clear"> 
    
	<!-- 캐러셀 -->
    
  </div>
</div>
 --%>
<div class="container">
	      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	        <ol class="carousel-indicators">
	          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
	          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
	        </ol>
	        
	        <div class="carousel-inner" role="listbox">
	          
	          <div class="item active">
	            <img src="/resources/images/homedeco/main30.jpg"  width="100%" height="100%" alt="First slide">
	          </div>
	          
	          <div class="item">
	            <img src="/resources/images/homedeco/main32.jpg"  width="100%" height="100%"alt="Second slide">
	          </div>
	          
	          <div class="item">
	            <img src="/resources/images/homedeco/main09.jpg"  width="100%" height="100%"alt="Third slide">
	          </div>
	          
	        </div>
	        
	        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
	          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	          <span class="sr-only">Previous</span>
	        </a>
	        
	        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
	          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	          <span class="sr-only">Next</span>
	        </a>
	     </div>
</div>
<br/>	     
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <section class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="center btmspace-50">
      <h3 class="font-x2 nospace">[ RECIPE LIST ]</h3>
      <p class="nospace">테마버튼</p>
    </div>
    <hr/>
<div>
    <div class="group">
      <article class="one_third first"><a href="#"><img class="btmspace-30" src="/resources/images/homedeco/hetras.jpg" alt=""></a>
        <h4 class="nospace btmspace-10 font-x1 uppercase">Tincidunt eget nisi</h4>
        <ul class="nospace btmspace-10 group font-xs">
          <li class="fl_left">
            <time datetime="2045-04-06">6<sup>th</sup> April 2045</time>
          </li>
          <li class="fl_right">by <a href="#">Admin</a></li>
        </ul>
        <hr>
        <p>Auctor cursus feugiat sed scelerisque id odio non scelerisque sed ac est rhoncus sodales ante dictum lacinia&hellip;</p>
        <p class="nospace"><a href="#">Read More &raquo;</a></p>
      </article>
      <article class="one_third"><a href="#"><img class="btmspace-30" src="/resources/images/homedeco/watermelon.jpg" alt=""></a>
        <h4 class="nospace btmspace-10 font-x1 uppercase">Lacinia etiam ornare</h4>
        <ul class="nospace btmspace-10 group font-xs">
          <li class="fl_left">
            <time datetime="2045-04-05">5<sup>th</sup> April 2045</time>
          </li>
          <li class="fl_right">by <a href="#">Admin</a></li>
        </ul>
        <hr>
        <p>Morbi tempor ac nibh eu imperdiet diam maecenas in facilisis arcu nec pulvinar risus etiam convallis lacus&hellip;</p>
        <p class="nospace"><a href="#">Read More &raquo;</a></p>
      </article>
      <article class="one_third"><a href="#"><img class="btmspace-30" src="/resources/images/homedeco/petplant.jpg" alt=""></a>
        <h4 class="nospace btmspace-10 font-x1 uppercase">Elementum vestibulum</h4>
        <ul class="nospace btmspace-10 group font-xs">
          <li class="fl_left">
            <time datetime="2045-04-04">4<sup>th</sup> April 2045</time>
          </li>
          <li class="fl_right">by <a href="#">Admin</a></li>
        </ul>
        <hr>
        <p>Est lectus lacinia enim quis egestas leo urna id ex integer ipsum purus sagittis at eleifend et vestibulum&hellip;</p>
        <p class="nospace"><a href="#">Read More &raquo;</a></p>
      </article>
    </div>
</div>    
    <!-- ################################################################################################ -->
  </section>
</div>
<br/>
<hr/>

<!-- ################################################################################################ -->
<div class="wrapper row4">
  <footer id="footer" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <h3 class="heading">식탁의온도</h3>
    <ul class="nospace inline pushright uppercase">
      <li><a href="#">Home</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">Contact</a></li>
      <li><a href="#">Login</a></li>
      <li><a href="#">Register</a></li>
    </ul>
    
    <div id="copyright">
      <p>Copyright &copy; 2022 - All Rights Reserved - <a href="#">Sik On</a></p>
      <p class="font-xs">Template by Heaps</p>
    </div>
    <!-- ################################################################################################ -->
  </footer>
</div>
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><span class="glyphicon glyphicon-menu-up" aria-hidden="true"></span></a>
</body>
</html>