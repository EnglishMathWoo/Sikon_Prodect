<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
html,body {
  height: 100%;
}
</style>


</head>
<body>

<div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
        
        
        <!-- <div class="col-2"></div> -->
        <div class="col-4 text-center">
              <form class="" action="[Process]-FindId.php" method="post">
                  <div class="card" style="padding:8px">
                    <h4>비밀번호 찾기</h4>
                        <div class="input-group flex-nowrap" style="padding:8px">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="addon-wrapping">아이디</span>
                            </div>
                            <input type="text" name="user_name"id="user_name" class="form-control" placeholder="" required aria-label="Username" aria-describedby="addon-wrapping">
                        </div>
                         <button type="button" id="emailChk" class="doubleChk" >인증번호 보내기</button><br/>
                        <div class="input-group flex-nowrap" style="padding:8px">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="addon-wrapping">이름</span>
                            </div>
                            <input type="email" name="user_email" id="user_email" class="form-control" placeholder="" required aria-label="Username" aria-describedby="addon-wrapping">
                        </div>
                        <button type="submit" style="margin:8px" class="btn btn-outline-info" name="button">비밀번호 찾기</button>
                  </div>
            </form>
          </div>

        <div class="col-2"></div>
    </div> <!-- END OF ROW -->
</div>



</body>
</html>