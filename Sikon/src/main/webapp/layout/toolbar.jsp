<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ToolBar Start /////////////////////////////////////-->
<header id="header" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><a href="#">식탁의온도</a></h1>
    </div>
    <!-- ################################################################################################ -->
    <nav id="mainav" class="fl_right">
      <ul class="clear">
        <li class="active"><a href="#">RECIPE</a></li>
        <li><a class="drop" href="#">STORE</a>
          <ul>
            <li><a href="#">Level 2</a></li>
            <li><a href="#">Level 2</a></li>
            <li><a href="#">Level 2</a></li>
            <li><a href="#">Level 2</a></li>
            <li><a href="#">Level 2</a></li>
          </ul>
        </li>
        <li><a class="drop" href="#">COOKCLASS</a>
          <ul>
            <li><a href="#">Level 2</a></li>
            <li><a class="drop" href="#">Level 2 + Drop</a>
              <ul>
                <li><a href="#">Level 3</a></li>
                <li><a href="#">Level 3</a></li>
                <li><a href="#">Level 3</a></li>
              </ul>
            </li>
            <li><a href="#">Level 2</a></li>
          </ul>
        </li>
        <li><a href="#">Link Text</a></li>
        <li><a href="#">Link Text</a></li>
      </ul>
    </nav>
    <!-- ################################################################################################ -->
  </header>
		<!-- ToolBar End /////////////////////////////////////-->
 	
   	
   	
   	<script type="text/javascript">
	
		//============= logout Event  처리 =============	
		 $(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		 	$("a:contains(' LOGOUT')").on("click" , function() {
				$(self.location).attr("href","/user/logout");
				//self.location = "/user/logout"
			}); 
		 });
		
		//============= 회원정보조회 Event  처리 =============	
		 $(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		 	$("a:contains('회원정보조회')").on("click" , function() {
				//$(self.location).attr("href","/user/logout");
				self.location = "/user/listUser"
			}); 
		 });
		
		//=============  개인정보조회회 Event  처리 =============	
	 	$( "a:contains('개인정보조회')" ).on("click" , function() {
	 		//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$(self.location).attr("href","/user/getUser?userId=${sessionScope.user.userId}");
		});
		
	 	$( "a:contains(' MyPage')" ).on("click" , function() {
	 		//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$(self.location).attr("href","/user/getUser?userId=${sessionScope.user.userId}");
		});
	 	
	 	//=============  장바구니 Event  처리 =============	
	 	$( "a:contains(' Cart')" ).on("click" , function() {
	 		
			$(self.location).attr("href","/wishList/getWishlist");
		});
	 	
	 	//=============  판매상품등록 Event  처리 =============	
	 	$( "a:contains('상품등록')" ).on("click" , function() {
	 		
			$(self.location).attr("href","/product/addProductView.jsp");
			//$(self.location).attr("href","/store/summernoteTest2.jsp");
		});
	 	
	 	//=============  판매상품관리 Event  처리 =============	
	 	$( "a:contains('상품관리')" ).on("click" , function() {
	 		
			$(self.location).attr("href","/product/listProduct?menu=manage");
		});
	 	
	 	//=============  판매리스트조회 Event  처리 =============	
	 	$( "a:contains('판매리스트조회')" ).on("click" , function() {
	 		
			$(self.location).attr("href","/purchase/listSales?menu=manage");
		});
	 	
	 	//=============  상 품 검 색 Event  처리 =============	
	 	$( "a:contains('상품검색')" ).on("click" , function() {
	 		
			$(self.location).attr("href","/product/listProduct?menu=search");
		});
	 	
	 	
	 	//=============  스토어 Event  처리 =============	
	 	$( "a:contains('스토어')" ).on("click" , function() {
	 		
			$(self.location).attr("href","/store/listStore?menu=search");
		});
	 	
	 	//=============  구매이력조회 Event  처리 =============	
	 	$( "a:contains('구매이력조회')" ).on("click" , function() {
	 		
			$(self.location).attr("href","/purchase/listPurchase");
		});
	 	
		
	 	//=============  최근 본 상품 Event  처리 =============	
	 	$( "a:contains('최근 본 상품')" ).on("click" , function() {
	 		popWin = window.open("/history.jsp","popWin","left=300, top=200, width=300, height=400, marginwidth=0, marginheight=0, scrollbars=no, scrolling=no, menubar=no, resizable=no");
		});
	</script>  