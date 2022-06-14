<%@ page contentType="text/html; charset=euc-kr"%>

<html lang="ko">
<head>
<meta charset="EUC-KR">

<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>

html {
  line-height: 1;
}

ol, ul {
  list-style: none;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
}

caption, th, td {
  text-align: left;
  font-weight: normal;
  vertical-align: middle;
}

q, blockquote {
  quotes: none;
}
q:before, q:after, blockquote:before, blockquote:after {
  content: "";
  content: none;
}

a img {
  border: none;
}

article, aside, details, figcaption, figure, footer, header, hgroup, main, menu, nav, section, summary {
  display: block;
}

/* Colors */
/* ---------------------------------------- */
/* ---------------------------------------- */
* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
/* ---------------------------------------- */
body {
  text-align: center;
  font-family: "Lato", "sans-serif";
  font-weight: 400;
}

a {
  text-decoration: none;
}


.info-text {
  text-align: left;
  width: 100%;
}

.form-group {
  margin-bottom: 20px;
}

h2.heading {
  font-size: 18px;
  text-transform: uppercase;
  font-weight: 300;
  text-align: left;
  color: #937062;
  border-bottom: 1px solid #937062;
  padding-bottom: 3px;
  margin-bottom: 20px;
}

.controls {
  text-align: left;
  position: relative;
}
.controls input[type=text],
.controls input[type=email],
.controls input[type=number],
.controls input[type=date],
.controls input[type=tel],
.controls textarea,
.controls button,
.controls select {
  padding: 12px;
  font-size: 14px;
  border: 1px solid #c6c6c6;
  width: 100%;
  margin-bottom: 18px;
  color: #888;
  font-family: "Lato", "sans-serif";
  font-size: 16px;
  font-weight: 300;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  -ms-border-radius: 2px;
  -o-border-radius: 2px;
  border-radius: 2px;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}
.controls input[type=text]:focus, .controls input[type=text]:hover,
.controls input[type=email]:focus,
.controls input[type=email]:hover,
.controls input[type=number]:focus,
.controls input[type=number]:hover,
.controls input[type=date]:focus,
.controls input[type=date]:hover,
.controls input[type=tel]:focus,
.controls input[type=tel]:hover,
.controls textarea:focus,
.controls textarea:hover,
.controls button:focus,
.controls button:hover,
.controls select:focus,
.controls select:hover {
  outline: none;
  border-color: #937062;
}
.controls input[type=text]:focus + label, .controls input[type=text]:hover + label,
.controls input[type=email]:focus + label,
.controls input[type=email]:hover + label,
.controls input[type=number]:focus + label,
.controls input[type=number]:hover + label,
.controls input[type=date]:focus + label,
.controls input[type=date]:hover + label,
.controls input[type=tel]:focus + label,
.controls input[type=tel]:hover + label,
.controls textarea:focus + label,
.controls textarea:hover + label,
.controls button:focus + label,
.controls button:hover + label,
.controls select:focus + label,
.controls select:hover + label {
  color: #937062;
  cursor: text;
}
.controls .fa-sort {
  position: absolute;
  right: 10px;
  top: 17px;
  color: #999;
}
.controls select {
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  cursor: pointer;
}
.controls label {
  position: absolute;
  left: 8px;
  top: 12px;
  width: 60%;
  color: #999;
  font-size: 16px;
  display: inline-block;
  padding: 4px 10px;
  font-weight: 400;
  background-color: rgba(255, 255, 255, 0);
  -webkit-transition: color 0.3s, top 0.3s, background-color 0.8s;
  -moz-transition: color 0.3s, top 0.3s, background-color 0.8s;
  -o-transition: color 0.3s, top 0.3s, background-color 0.8s;
  transition: color 0.3s, top 0.3s, background-color 0.8s;
  background-color: white;
}
.controls label.active {
  top: -20px;
  color: #555;
  background-color: white;
  width: auto;
}
.controls textarea {
  resize: none;
  height: 200px;
}

input:-webkit-autofill {
   -webkit-box-shadow: 0 0 0 1000px #fff inset;
}

button {
  cursor: pointer;
  background-color: #937062;
  border: none;
  color: #fff;
  padding: 12px 0;
  float: right;
}
button:hover {
  background-color: #937062d4;
}

.clear:after {
  content: "";
  display: table;
  clear: both;
}

.grid {
  background: #f7f7f7;
}
.grid:after {
  /* Or @extend clearfix */
  content: "";
  display: table;
  clear: both;
}

[class*=col-] {
  float: left;
  padding-right: 10px;
}
.grid [class*=col-]:last-of-type {
  padding-right: 0;
}

.col-2-3 {
  width: 66.66%;
}

.col-1-3 {
  width: 33.33%;
}

.col-1-2 {
  width: 50%;
}

.col-1-4 {
  width: 25%;
}

@media (max-width: 760px) {
  .col-1-4-sm,
.col-1-3,
.col-2-3 {
    width: 100%;
  }

  [class*=col-] {
    padding-right: 0px;
  }
}
.col-1-8 {
  width: 12.5%;
}

.formall{
	padding:220px;
}
</style>
<script>
$(function(){
	function floatLabel(inputType){
		$(inputType).each(function(){
			var label = $(this);
			// on focus add cladd active to label
			label.focus(function(){
				label.next().addClass("active");
			});
			//on blur check field and remove class if needed
			label.blur(function(){
				if(label.val() === '' || label.val() === 'blank'){
					label.next().removeClass();
				}
			});
		});
	}
	// just add a class of "floatLabel to the input field!"
	floatLabel(".floatLabel");
});

</script>
</head>

<body>

<div>
	<jsp:include page="/layout/toolbar.jsp" />
</div>

<div class="container">
<div class="formall">
<form action="">
  <!--  General -->
  <div class="form-group">
    <h2 class="heading">add product</h2>
    <div class="controls">
      <input type="text" id="name" class="floatLabel" name="name">
      <label for="name">상품명</label>
    </div>
    <div class="controls">
      <input type="text" id="email" class="floatLabel" name="email">
      <label for="email">상품간략정보</label>
    </div>       
    <div class="controls">
      <input type="tel" id="phone" class="floatLabel" name="phone">
      <label for="phone">Phone</label>
    </div>
      <div class="grid">
        <div class="col-2-3">
          <div class="controls">
           <input type="text" id="street" class="floatLabel" name="street">
           <label for="street">Street</label>
          </div>          
        </div>
        <div class="col-1-3">
          <div class="controls">
            <input type="number" id="street-number" class="floatLabel" name="street-number">
            <label for="street-number">Number</label>
          </div>          
        </div>
      </div>
      <div class="grid">
        <div class="col-2-3">
          <div class="controls">
            <input type="text" id="city" class="floatLabel" name="city">
            <label for="city">City</label>
          </div>         
        </div>
        <div class="col-1-3">
          <div class="controls">
            <input type="text" id="post-code" class="floatLabel" name="post-code">
            <label for="post-code">Post Code</label>
          </div>         
        </div>
      </div>
      <div class="controls">
        <input type="text" id="country" class="floatLabel" name="country">
        <label for="country">Country</label>
      </div>
  </div>
  <!--  Details -->
  <div class="form-group">
    <h2 class="heading">contents</h2>
    <div class="grid">
    <div class="col-1-4 col-1-4-sm">
      <div class="controls">
        <input type="date" id="arrive" class="floatLabel" name="arrive" value="<?php echo date('Y-m-d'); ?>">
        <label for="arrive" class="label-date"><i class="fa fa-calendar"></i>&nbsp;&nbsp;Arrive</label>
      </div>      
    </div>
    <div class="col-1-4 col-1-4-sm">
      <div class="controls">
        <input type="date" id="depart" class="floatLabel" name="depart" value="<?php echo date('Y-m-d'); ?>" />
        <label for="depart" class="label-date"><i class="fa fa-calendar"></i>&nbsp;&nbsp;Depart</label>
      </div>      
    </div>
      </div>
      <div class="grid">
    <div class="col-1-3 col-1-3-sm">
      <div class="controls">
        <i class="fa fa-sort"></i>
        <select class="floatLabel">
          <option value="blank"></option>
          <option value="1">1</option>
          <option value="2" selected>2</option>
          <option value="3">3</option>
        </select>
        <label for="fruit"><i class="fa fa-male"></i>&nbsp;&nbsp;People</label>
      </div>      
    </div>
    <div class="col-1-3 col-1-3-sm">
    <div class="controls">
      <i class="fa fa-sort"></i>
      <select class="floatLabel">
        <option value="blank"></option>
        <option value="deluxe" selected>With Bathroom</option>
        <option value="Zuri-zimmer">Without Bathroom</option>
      </select>
      <label for="fruit">Room</label>
     </div>     
    </div>

    <div class="col-1-3 col-1-3-sm">
    <div class="controls">
      <i class="fa fa-sort"></i>
      <select class="floatLabel">
        <option value="blank"></option>
        <option value="single-bed">Zweibett</option>
        <option value="double-bed" selected>Doppelbett</option>
      </select>
      <label for="fruit">Bedding</label>
     </div>     
    </div>
      
     </div>
      <div class="grid">
        <p class="info-text">Please describe your needs e.g. Extra beds, children's cots</p>
        <br>
        <div class="controls">
          <textarea name="comments" class="floatLabel" id="comments"></textarea>
          <label for="comments">Comments</label>
          </div>
            <button type="submit" value="Submit" class="col-1-4">Submit</button>
      </div>  
  </div> <!-- /.form-group -->
</form>


	</div>
</div>
</body>
</html>
