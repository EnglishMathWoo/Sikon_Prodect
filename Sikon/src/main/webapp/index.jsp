<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=3.0">	
	<link rel="stylesheet" href="style.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap">
  <script type="text/javascript">

</script>
<style>

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      border: 0px solid silver;
    }


    body {
      font-family: 'Noto Sans KR', sans-serif;
      font-size: 0.9rem;
      line-height: 1rem;
      color: #666;
      letter-spacing: 0.1px;
    }

    h1 {
      font-size: 3.5rem;
      line-height: 4rem;
      color: #FFF;
    }

    h2 {
      font-size: 2.2rem;
      color: #333;
      padding-bottom: 20px;
      line-height: 2rem;
      text-align:center;
    }

    h3 {
      font-size: 1.3rem;
      line-height: 1.5rem;
      color: #555;
      padding-bottom: 20px;
    }

    h4 {
      font-size: 1rem;
      color: #555;
      padding-bottom: 30px;
    }

h5{
  font-size: 0.9rem;
}

    p {
      font-size: 0.9rem;
      line-height: 1.5rem;
      color: #777;
    }

    a:link {
      text-decoration: none;
      
    }

    a:visited {
      
}

    a:hover {
      color: #21325D;
    }

    a:active {
     
    }

    button {
      font-size: 1rem;
      padding: 10px 30px;
      background: none;
      color: #fff;
      border: 1px solid #fff;
      font-weight: bold;
      transition: 0.3s;
      margin:2rem 0;
    }



    button:hover {
      background: #222;
      color: #fff;
      border: 1px solid #222;
      font-weight: bold;
      cursor: pointer;
    }

header{
  height:70px;
  
}

#navbar {
  position: fixed;
  top:0;
  width: 100%;
  display: flex;
  justify-content:space-between;
  transition: top 0.8s;
  line-height: 4rem;
  padding: 0px 10%;
  z-index:2;
  background:#fff;
}

#navbar a {
  float: left;
  display: block;
  color: #333;
  text-decoration: none;
  margin: 0 2rem;
  font-size:1rem;
  
}

#navbar a:hover {
  color: #222;
  font-weight: bold;
}

.logo{
  padding-top:6px;
}

.logo img{
  width:200px;
  cursor:pointer;
}

.cart{
  padding-top:9px;
}

.cart img{
  width:25px;
  margin:0 10px;
   cursor:pointer;
  opacity:0.7;
}

.cart img:hover{
  opacity:1;
}

 main{
  position:relative;
   cursor:pointer;
}

.swiper-container {
    width:100%;
    height:700px;
  overflow: hidden;
  padding-top: 180px;
}
.swiper-slide {
  width:100%; 
  height:500px;
  width: 222px;
    margin-right: 30px;
    position: relative;
}

/* 처음 슬라이드 큰거*/

.swiper-wrapper>:nth-child(1){
  background: url('https://img.29cm.co.kr/next-product/2022/06/10/fcc59c0e38c5415daf03bcbdf9445b2a_20220610134025.jpg?width=2000') no-repeat;
  background-size: contain;
  background-position: center;
  position: relative;
  filter:brightness(80%);
}

.swiper-wrapper>:nth-child(2){
  background: url('https://img.29cm.co.kr/next-product/2022/06/10/4d9b49e20c074b5792d081387535fab2_20220610134417.jpg?width=2000') no-repeat;
  background-size: contain;
  background-position: center;
  position: relative;
  filter:brightness(80%);
}

.swiper-wrapper>:nth-child(3){
  background: url('https://img.29cm.co.kr/next-product/2022/06/10/80e8df5fc6564c1294958ed893cfb95f_20220610160836.jpg?width=2000') no-repeat;
  background-size: contain;
  background-position: center;
  position: relative;
  filter:brightness(90%);
}

.swiper-slide img{
  width:100%;
}

.mword{
  position: absolute;
  top: 50%;
  left:50%;
  transform: translate(-50%, -50%);
  z-index:10;
   text-align:center;
}


main p{
  font-size: 1rem;
   color: #fff;
  line-height: 2rem;
  padding-top:1rem;
  
}

.swiper-button-next0{
  color:#fff;
  font-size: 5rem;
  position: absolute;
  top: 50%;
  right: 5%;
  z-index:99;
  font-weight:200;
}

.swiper-button-prev0{
  color:#fff;
  font-size: 5rem;
  position: absolute;
  top: 50%;
  left: 5%;
  z-index:99;
  font-weight:200;
}


  .top {
  position: fixed;
  right: 3%;
  bottom: 8%;
  cursor:pointer;
  z-index:20;
    color:#fff;
padding:10px;
    background:#444;
    
}



.one{
  clear:both;
  width:1000px;
  padding: 9rem 0;
  margin:0 auto;
}

.one p {
  text-align:center;
}

.one>:nth-child(3){
  display:flex;
  justify-content:space-between;
  margin-top: 2rem;
}

.one section{
  width:48.5%;
  height:300px;
  cursor:pointer;
}

/* weekly best*/
.one>:nth-child(3)>:first-child{
   background: url('https://lh3.googleusercontent.com/2mIHDvOzt17y9xXEEHzQQD3U-FD7JRtapZjLl007mvWLoIxLLbu4ewzvDh2sDWRQ3V-fYUx5OoMP66r35xrFrTIizy1cBvbyKzZ9Gy_ZLBmWoHuAyaxJRno=s0') no-repeat;
  background-size: cover;
  background-position: center center;
  position: relative;
}

.one>:nth-child(3)>:last-child{
   background: url('https://lh3.googleusercontent.com/bypbEJb2H2lZG0H4VD1gn18tdThA0eqp1bfnJP1MzLDE4kwGGCpWC39Z9bnpGX98tIFDZH_1ro-fNIRoBfHOgElAWdcIuUyFvJT0bbR8wv5eyq-UCMA-=s0') no-repeat;
  background-size: cover;
  background-position: center center;
  position: relative;
}

.one section div{
  width:100%;
  height:300px;
  opacity:0;
}

.one section div:hover{
  opacity:0.9;
  background:rgba(0,0,0,0.5)
}

.one h3{
  text-align:center;
  line-height: 17rem;
  color:#fff;
  font-size: 2rem;
}

.two{
  clear:both;
  background:#eee;
}

.two section div img:hover{
  opacity:0.9;
  background:rgba(0,0,0,0.5)
}

.two h5{
    text-align: center;
    color: #fff;
    font-size: 16px;
    line-height: 1.3;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    position: absolute;
}

.two>:first-child{
  width:1000px;
  margin:0 auto;
  height:650px;
  display:flex;
  padding: 9rem 2rem 50px 0rem;
  
  
}

.two>:first-child>:first-child{
  width:25%;
  padding: 2rem 1rem;
  text-align:center;
  position:relative;
}

.two>:first-child>:last-child{
  width:75%;
  
}

.swiper-container1 {
	height:400px;
  overflow:hidden;
}
.swiper-slide {
	text-align:center;
	display:flex; 
	justify-content:center; /* 좌우 기준 중앙정렬 */
  cursor:pointer;
  
}

.swiper-slide:hover{
  opacity:1;
}

.swiper-slide img {
	width:100%;
  height:280px;
  position:relative;
}



.word{  
  position:absolute;
  left:50%;
  transform: translate(-50%, 0%);
  bottom: 5%;
  padding:0 5px;
  text-align:center;
  background: rgb(26, 26, 26,0.5);
    width: 222px;
    height: 280px;
    top: 0;

}




.swiper-button-next1{
  color:#333;
  font-size:1.8rem;
  border:1px solid silver;
  width:60px;
  height:60px;
  line-height:3.3rem;
  position:absolute;
  top:40%;
  right:25.5%;
  cursor:pointer;
}

.swiper-button-prev1{
  color:#333;
  font-size:1.8rem;
  border:1px solid silver;
  width:60px;
  height:60px;
  line-height:3.3rem;
  position:absolute;
  top:40%;
  left:25.5%;
  cursor:pointer;
}



.three{
  clear:both;
  margin:0 auto;
}

.three>:first-child{
  height:350px;
   background: url('https://www.giordano.co.kr/_skin/giordano_20191202/img/title/1094.jpg') no-repeat;
  background-size: cover;
  background-position: center;
  position: relative;
  cursor:pointer;
}

.four{
   clear:both;

  padding: 11rem 0;
  margin:0 auto;
  text-align:center;
  background:#eee;
}

.up-on-scroll {
  transition: all 0.7s;
}


.four>:nth-child(3){
  display:flex;
  justify-content: space-between;
   margin:0 auto;
  width:1000px;
}

.four>:nth-child(3) section{
  width:300px;
  height:700px;
  margin: 20px 15px;
  
}

.topp{
  margin-bottom:30px;
  background:#fff;
  padding:10px;
}

.img1,.img2,.img3,.img4,.img5,.img6,.img7,.img8{
  
  position: relative;
  margin-bottom:10px;
  cursor:pointer;
}

.four section p{
  font-size:0.8rem;
  padding:2px;
  border-bottom:1px solid silver;
}


#usik {
float:left;
margin-top:10px;
	width: 27px;
	height: 37px;
}



footer{
  clear:both;
  background:#444;
}

footer>:first-child{
  margin:0 auto;
  padding: 3.5rem 15%;
  display:flex;
  justify-content:space-between;
}

footer p{
  color:#ccc;
}

footer img{
  width:30px;
  margin:0 15px;
  cursor:pointer;
  filter:brightness(90%);
}

footer img:hover{
  filter:brightness(0%);
}
</style>
</head>
  
  <body>
    
<jsp:include page="/layout/toolbar.jsp" />    
   
<div class="swiper-container swiper">
<div></div>
	<div class="swiper-wrapper">
		<div class="swiper-slide"></div>
		<div class="swiper-slide"></div>
		<div class="swiper-slide"></div>
	</div>
  
  <div class="swiper-button-next0"><i class="fa-solid fa-angle-right"></i></div></div>
   <div class="swiper-button-prev0"><i class="fa-solid fa-angle-left"></i></div>
  
  

   
    
    <article class="top">▲</article>
    
    <article class="one">
        <h2>WEEKLY BEST</h2>
        <p>지금 가장 사랑받는 레시피</p>
      
      <div>
        <section>
          <div>
            <h3>가리비 칼국수</h3>
          </div>
        </section>
 <section>
          <div>
            <h3>계란 두부</h3>
          </div>
        </section>
      </div>
    </article>
    
    <article class="two">
      <div>
        <section>
          <h2>NEW ARRIVALS</h2>
        <p>멘토의 추천 아이템 </p>
          
          	<!-- 네비게이션 -->
	<div class="swiper-button-next1"><i class="fa-solid fa-angle-right"></i></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
	<div class="swiper-button-prev1"><i class="fa-solid fa-angle-left"></i></div><!-- 이전 버튼 -->
        </section>
        
        <section>
          <div class="swiper-container1">
	<div class="swiper-wrapper">
		<div class="swiper-slide">
            <img class="pasta" src="data:image/jpeg;base64,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" data-deferred="1" class="rg_i Q4LuWd" jsname="Q4LuWd" width="271" height="180" alt="마켓컬리 :: 내일의 장보기, 마켓컬리" data-atf="true" data-iml="919.9000000953674">           
            <div class="word">
                <h5>똑똑똑</h5>
             </div>
        </div>
		
		
		<div class="swiper-slide">
            <img class="pasta" src="data:image/jpeg;base64,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" data-deferred="1" class="rg_i Q4LuWd" jsname="Q4LuWd" width="271" height="180" alt="마켓컬리 :: 내일의 장보기, 마켓컬리" data-atf="true" data-iml="919.9000000953674">
		   <div class="word">
             <h5>저기여 ?</h5>
          </div>
		    </div>
        
		<div class="swiper-slide">            
                <img class="pasta" src="data:image/jpeg;base64,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" data-deferred="1" class="rg_i Q4LuWd" jsname="Q4LuWd" width="271" height="180" alt="마켓컬리 :: 내일의 장보기, 마켓컬리" data-atf="true" data-iml="919.9000000953674">
		  <div class="word">
            <h5>문예다씨 ?</h5>
        </div>
		</div>
		
		<div class="swiper-slide"><img src="https://www.giordano.co.kr/_data/attach/202007/13/a9cdad1657662c4cce30d62aa050dc92.jpg#addimg">
		  <div class="word">
            <h5></h5>
        </div>
		</div>
        
    <div class="swiper-slide"><img src="https://www.giordano.co.kr/_data/attach/202007/13/67ba636f4e9fbc0505fecaa36420904e.jpg#addimg">
       <div class="word">
        </div>
    </div>
        

	</div>
            <!-- 페이징 -->
	<div class="swiper-pagination1"></div>
</div>
         
        </section>
      
      </div>
         
    </article>
    
    <article class="three">
      <div></div>
    </article>
      
      <article class="four">
        <h2>BEST PHOTO REVIEW</h2>
        <p>매주 쿠킹클래스 베스트 리뷰 3명을 선정하여 감사 포인트를 일괄 지급합니다. </p>
      <div>
        <section class="up-on-scroll">
          <div class="topp">
            <div class="img1"></div>
            <div>
            <img src="/resources/images/uploadFiles/index/KakaoTalk_20220613_175909763.jpg" height="200px;">
              <h5>홍차쇼콜라갸또 원데이클래스</h5>
              <p>★★★★</p>
              <p>재료의 쓰임부터 배합까지 이해하기 좋았습니다!</p>
              <p>강사님 너무 친절하시고 강추합니다..</p>
              </div>
          </div>
          
          <div class="topp">
            <div class="img2"></div>
            <div>
            <img src="/resources/images/uploadFiles/index/KakaoTalk_20220613_175909763_01.jpg" height="180px;">
              <h5>생일케이크 원데이클래스</h5>
              <p>★★★</p>
              <p>따라하기 어려웠지만 결과물이 귀여워서 만족합니다</p>
              </div>
          </div>
        </section>
        
        <section class="up-on-scroll">
          <div class="topp">
            <div class="img3"></div>
            <div>
            <img src="/resources/images/uploadFiles/index/KakaoTalk_20220613_181942243.jpg" height="200px;">
              <h5>바리스타의 라떼아트 클래스</h5>
              <p>★★★★</p>
              <p>이 강의 하나면 이제 라떼아트 고수!!선생님 감사합니다</p>
             
              </div>
          </div>
          
          <div class="topp">
            <div class="img4"></div>
            <div>
              <img src="/resources/images/uploadFiles/index/KakaoTalk_20220613_175909763_02.jpg" height="180px;">
              <h5>특별한 날을 위한 디너 클래스</h5>
              <p>★★</p>
              <p>야채 안좋아하는데 조금 실망입니다.</p>
               <p>덕분에 고급진 식사했어요 강추합니다.</p>
              </div>
          </div>
        </section>
        
        <section class="up-on-scroll">
          <div class="topp">
            <div class="img5"></div>
            <div>
              <img src="/resources/images/uploadFiles/index/KakaoTalk_20220613_181600641.jpg" height="130px;">
              <h5>부모님을 위한 떡케이크 클래스</h5>
              <p>★★★★★</p>
              <p>저희 임여사님이 너무 좋아하셨습니다!!맛도 최고예요</p>
              <p>엄마가 주위에 많이 자랑하셨어요ㅎㅎ예쁘고 맛도 좋네요</p>
              </div>
          </div>
          
          <div class="topp">
            <div class="img6"></div>
            <div>
              <img src="/resources/images/uploadFiles/index/KakaoTalk_20220613_181031733.jpg" height="200px;">
              <h5>특별한 날을 위한 디너 클래스</h5>
              <p>★★</p>
              <p>야채 안좋아하는데 조금 실망입니다.</p>
               <p>덕분에 고급진 식사했어요 강추합니다.</p>
               </div>
          </div>
        </section>
        
        <section class="up-on-scroll">
          <div class="topp">
            <div class="img7"></div>
            <div>
              <img src="/resources/images/uploadFiles/index/KakaoTalk_20220613_182222266.jpg" height="200px;">
              <h5>딸기 더블 치즈타르트</h5>
              <p>★★★★</p>
              <p>아까워서 못 먹겠어요ㅠㅠ대박입니다 너무 예쁜 케이크 완성!</p>
             
              </div>
          </div>
          
          <div class="topp">
            <div class="img8"></div>
              <div>
              <img src="/resources/images/uploadFiles/index/KakaoTalk_20220613_182827637_01.jpg" height="180px;">
              <h5>진수성찬 집밥 원데이클래스</h5>
              <p>★★★★★</p>
              <p>혼자 사는데 이렇게 잘 해먹은 거 처음이에요!만족합니다.</p>
             
              </div>
              
              </div>
        </section>
      </div>
    </article>
    
      
      <footer>
        <div>
          <p>서울특별시 강남구 역삼동 819-3 삼오빌딩 5-9층</p>
          <div>
          <img src="https://www.pngkit.com/png/full/213-2133577_facebook-logo-white-copy3-icono-de-facebook-animado.png">
          <img src="https://img.pngio.com/hd-twitter-icon-white-transparent-transparent-background-twitter-twitter-logo-white-png-2076_2077.png">
          <img src="https://cdn131.picsart.com/284792851018211.png?type=webp&to=min&r=640">
          </div>
          
          <p>COPYRIGHT(C) 2022 SIKON KOREA LTD.</p>
        </div>
      </footer>
    
  </body>
  <script>
  
  $(function() {
		
		$(document).on("click" ,".flower", function(){
			self.location = "/product/getProduct?prodNo=10004&menu=search";

		});
		$(document).on("click" ,".tray", function(){
			self.location = "/product/getProduct?prodNo=10005&menu=search";
		});
		$(document).on("click" ,".pasta", function(){
			self.location = "/product/getProduct?prodNo=10002&menu=search";
		});
	});
  

  var prevScrollpos = window.pageYOffset; 

  window.onscroll = function() { 
    

    var currentScrollpos = window.pageYOffset; 
    

    if (prevScrollpos > currentScrollpos) { 

      document.getElementById("navbar").style.top = "0"; 

    } else { 

      document.getElementById("navbar").style.top = "-100px"; 
    }
    

    prevScrollpos = currentScrollpos; 

  }


  //slider

  new Swiper('.swiper', {
  	pagination : { // 페이징 설정
  		el : '.swiper-pagination',
  		clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
  	},
    
  	navigation : { // 네비게이션 설정
  		nextEl : '.swiper-button-next0', // 다음 버튼 클래스명
  		prevEl : '.swiper-button-prev0', // 이번 버튼 클래스명
  	},
  });


  ///top

  $( window ).scroll( function() {
  	if ( $( this ).scrollTop() > 200 ) {
  		$( '.top' ).fadeIn();
  	} else {
  		$( '.top' ).fadeOut();
  	}
  } );

  $( '.top' ).click( function() {
  	$( 'html, body' ).animate( { scrollTop : 0 }, 400 );
  	return false;
  } );


  //new slider


  new Swiper('.swiper-container1', {

  	slidesPerView : 3, // 동시에 보여줄 슬라이드 갯수
  	spaceBetween : 30, // 슬라이드간 간격
  	slidesPerGroup : 3, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

  	// 그룹수가 맞지 않을 경우 빈칸으로 메우기
  	// 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
  	loopFillGroupWithBlank : true,

  	loop : true, // 무한 반복

  	pagination : { // 페이징
  		el : '.swiper-pagination1',
  		clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
  	},
  	navigation : { // 네비게이션
  		nextEl : '.swiper-button-next1', // 다음 버튼 클래스명
  		prevEl : '.swiper-button-prev1', // 이번 버튼 클래스명
  	},
  });





  ///scroll fade in

  let ticking = false;

  function isElementUnderBottom(elem, triggerDiff) {
    const { top } = elem.getBoundingClientRect();
    const { innerHeight } = window;
    return top > innerHeight + (triggerDiff || 0);
  }

  function handleScroll() {
    ticking = false;
    
    const upOnScrollElems = document.querySelectorAll('.up-on-scroll');
    upOnScrollElems.forEach(elem => {
      if (isElementUnderBottom(elem)) {
        elem.style.opacity = "0";
        elem.style.transform = 'translateY(70px)';
      } else {
        elem.style.opacity = "1";
        elem.style.transform = 'translateY(0px)';
      }
    });
    
    const productImg = document.querySelector('.diff-desc-image-wrap .image-wrap'); 
    const productImgRect = productImg.getBoundingClientRect();
    if (productImgRect.top < 0) {
      productImg.style.transform = `translateY(${-1 * productImgRect.top * 0.8 }px)` 
    } else {
      productImg.style.transform = 'none';
    }

    const changeBgSection = document.querySelector('.background-change-wrap');
    const changeBgImg = document.querySelector('.background-change-wrap > div');
    const {top: bgTop, height: bgHeight} = changeBgSection.getBoundingClientRect();
    if (bgTop < 0) {
      const rate = (-1) * bgTop / 4;
      changeBgImg.style.filter = `grayscale(${rate}%)`;
      changeBgImg.style.opacity = `${(100-rate/5) / 100}`;
    } else {
      changeBgImg.style.filter = 'none';
          changeBgImg.style.opacity = `1`;
    }
  }

  function requestTick() {
    if(!ticking) {
      requestAnimationFrame(handleScroll);
    }
    ticking = true;
  }

   window.addEventListener('scroll', requestTick);

  </script>
</html>
		