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
  width:200px;
  position:absolute;
  left:50%;
  transform: translate(-50%, 0%);
  bottom: 5%;
  padding:0 5px;
  text-align:center;
}


.color p{
  display:inline;
  padding: 0 2px;
  
}

.color>:nth-child(1){
  color:#2F2F30;
}

.color>:nth-child(2){
  color:#563915;
}

.color>:nth-child(3){
  color:#FBDE2C;
}

.color1 p{
  display:inline;
  padding: 0 2px;
}

.color1>:nth-child(1){
  color:#CD9895;
}

.color1>:nth-child(2){
  color:#D2BCA6;
}

.color2 p{
  display:inline;
  padding: 0 2px;
  
}

.color2>:nth-child(1){
  color:#AFAFAF ;
}

.color2>:nth-child(2){
  color:#E8C8BC;
}

.color2>:nth-child(3){
  color:#FFFAF4;
}


.color3 p{
  display:inline;
  padding: 0 2px;
}

.color3>:nth-child(1){
  color:#CD9895;
}

.color3 >:nth-child(2){
  color:#D2BCA6;
}

.color4 p{
  display:inline;
  padding: 0 2px;
}

.color4>:nth-child(1){
  color:#CD9895;
}

.color4 >:nth-child(2){
  color:#D2BCA6;
}

.color4 >:nth-child(2){
  color:#FFFAF4 ;
}

.color5 p{
  display:inline;
  padding: 0 2px;
}

.color5>:nth-child(1){
  color:#D2BCA6;
}

.color5 >:nth-child(2){
  color:#BAD6D8;
}

.color5 >:nth-child(2){
  color:#FFFAF4 ;
}

.color6 p{
  display:inline;
  padding: 0 2px;
}

.color6>:nth-child(1){
  color:#D2BCA6;
}

.color6 >:nth-child(2){
  color:#F33E2C  ;
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

.img1{
  
  position: relative;
  margin-bottom:10px;
  cursor:pointer;
}

.img2{
  
  position: relative;
  margin-bottom:10px;
  cursor:pointer;
}

.img3{
  position: relative;
  margin-bottom:10px;
  cursor:pointer;
}

.img4{
  position: relative;
  margin-bottom:10px;
  cursor:pointer;
}

.img5{
  position: relative;
  margin-bottom:10px;
  cursor:pointer;
}

.img6{
  position: relative;
  margin-bottom:10px;
  cursor:pointer;
}

.img7{
  position: relative;
  margin-bottom:10px;
  cursor:pointer;
}

.img8{
  position: relative;
  margin-bottom:10px;
  cursor:pointer;
}

.four section p{
  font-size:0.8rem;
  padding:2px;
  border-bottom:1px solid silver;
}

.five{
  clear:both;
  margin:0 auto;
  position:relative;
}

.five>:first-child{
width:800px;
  height:300px;
   background: url('https://www.giordano.co.kr/_data/banner/e1fb56b59685c7f8a5cd6ac7408c1b48.jpg') no-repeat;
  background-size: cover;
  background-position: 70% 30%;
  position: relative;
  cursor:pointer;
  filter:brightness(70%);
}

.five>:nth-child(2){
  text-align:right;
  position:absolute;
  top: 23%;
  right: 25%;
}

.five h2{
  color:#fff;
}

.five h3{
  color:#fff;
}

.five p{
  color:#fff;

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
		<div class="swiper-slide"><img src="/resources/images/uploadFiles/f491891d-300d-44f3-8e9a-b19936145eb6.jpg">
      <div class="word">
          </div>
		</div>
		
		<div class="swiper-slide"><img src="/resources/images/uploadFiles/400e0c54-cb87-421b-9122-c35484007ddd.jpg">
		  <div class="word">
        </div>
		    </div>
        
		<div class="swiper-slide"><img src="/resources/images/uploadFiles/0441c614-9dc0-4d77-b6ca-7c48e497a92d.jpg">
		  <div class="word">
        </div>
		</div>
		
		<div class="swiper-slide"><img src="https://www.giordano.co.kr/_data/attach/202007/13/a9cdad1657662c4cce30d62aa050dc92.jpg#addimg">
		  <div class="word">
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
    
    <article class="five">
      <div></div>
      <div>
        <h3>SIKON</h3>
          <h2>텍스트/포토 리뷰 혜택</h2>
        <p>상품, 쿠킹클래스 후 느낀 점을<br>
        사진과 함께 남겨주세요!</p>
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
		