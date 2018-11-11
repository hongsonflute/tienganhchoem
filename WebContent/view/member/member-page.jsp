<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *Must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Tiếng Anh Cho Bé | Contact</title>

    <!-- Favicon -->
    <link rel="icon" href="/tienganhchobe/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="/tienganhchobe/style.css">
    
    <style type="text/css">
     .member-main{
    	width:90%;
    	height:600px;
    	border:1px solid;
    	margin: 20px auto;
    	position: relative;
    	
    }
    .member-slidebar{
    	
    	width:300px;
    	height:580px;
    	color:#000;
    	margin-left:10px;
    	margin-top:10px;
    	margin-bottom:10px;
    	border:1px solid;
    	float: left;
    }
    .member-content{
    	width:600px;
    	height:580px;
    	margin-left:10px;
    	margin-top:10px;
    	margin-bottom:10px;
    	float:left;
    	border:1px solid;
    }
    
   
    .member-avatar{
    	width:290px;
    	height:300px;
    	background-color:#F7F7F7;
    	position: absolute;
    	margin-top: 5px;
   		margin-left: 5px;
    }
    .member-info{
    	width:290px;
    	height: 265px;
    	margin-top:310px;
    	position: absolute;
    	margin-left: 5px;
    	
    }
    .avatarCus{
    	width:200px;
    	height:auto;
    	border:1px solid;
    	margin: 50px 42px;
    	background-color: #EEF6F8;
    	
    }
    .member-name{
    	text-align: center;
    	color:#000;
    	font-weight: bold;
    	text-decoration: none;
    	margin: 15px 88px;
    	position: absolute;
    }
    .member-type{
    	text-align: center;
    	color:#000;
    	text-decoration: none;
    	margin:260px 88px;
    	position: absolute;
    }
    .thanhtich{
    	background: #F2F2F2;
    }
    .tieude{
		background-color: #93AF3E;
		color:#fff;
		text-align: center;
	}
	
	.form-thong-tin{
		border:1px solid;
		width:550px; 
		margin:0 auto;
		height: 530px;
		position: relative;
	}
	
	.tit-and-input{
		padding-bottom: 10px;
		padding-top:10px;
		margin: 10px 15px;
		width: 515px;
		height: 45px;
		
	}
	.title-input{
	
		float:left;
    	padding-left: 30px;
    	width: 150px;
	
	}
	.input{
		width: 267px;
		height: 25px;
		border: 1px solid #b5b5b5;
		cursor: text;
		float:left;
	}
    </style>
	
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>

	<div class="member-main">
	<div class="member-slidebar">
	
			<div class="member-avatar">
				
				<a class="member-name" href="#">HONGSONFLUTE</a>
				<span class="member-type">Thành viên: thường</span>
				
				<div class="avatarCus">
				<img alt="avatar" src="/tienganhchobe/view/admin/assets/img/faces/face-3.jpg" width="180px" style=" margin: 8px 10px;">
				</div>
				
			</div>
			<div class="member-info">
			<h4 class="tieude">Thành Tích</h4>
				<ul>
					<li class="thanhtich">Giới tính:</li>
					<li>Điểm học bạ:</li>
					<li class="thanhtich">Điểm thành tích:</li>
					<li>Bài viết:</li>
					<li class="thanhtich">Ngày tham gia:</li>
				
				</ul>
				
				<h4 class="tieude">Quản Trị</h4>
				<a href="#">Thông tin tài khoản</a><br>
				<a href="#">Thay đổi ảnh đại diện</a><br>
				<a href="#">Thay đổi mật khẩu</a><br>
				<a href="#">Đăng xuất</a>
			</div>
	</div> <!-- het div slidebar -->
	
	
	<div class="member-content">
	<h4 class="tieude">Thông tin cá nhân</h4>
	<div class="form-thong-tin">
		
		<form action="">
		
		<div class="tit-and-input">
			<div class="title-input">Số điện thoại</div>
			<div class="input"><input style="width:265px" type="text"></div>
		</div>
		
		<div class="tit-and-input">
			<div class="title-input">Họ và tên:</div>
			<div class="input"><input style="width:265px" type="text"></div>
		</div>
		
		<div class="tit-and-input">
			<div class="title-input">Email:</div>
			<div class="input"><input style="width:265px" type="text"></div>
		</div>
		
		<div class="tit-and-input">
			<div class="title-input">Ngày sinh</div>
			<div>
				<select name="ngay" id="ngay">
					<option value="0">----</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
					</select>
				
				<select name="thang" id="thang">
					<option value="0">----</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="1">6</option>
					<option value="2">7</option>
					<option value="3">8</option>
					<option value="4">9</option>
					<option value="5">10</option>
					<option value="1">11</option>
					<option value="2">12</option>	
				</select>
				<select name="nam" id="nam">
					<option value="0">----</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					
				</select>
				
			</div>
		</div>
		
		<div class="tit-and-input">
			<div class="title-input">Giới tính</div>
			<div ><input name="sex" type="checkbox">Nam
			<input name="sex" type="checkbox">Nữ
			</div>
		</div>
		
		<div class="tit-and-input">
			<div class="title-input">Địa chỉ</div>
			<div class="input"><input style="width:265px" type="text"></div>
		</div>
		
		<div class="tit-and-input">
			<div class="title-input">Quốc gia</div>
			<div>
			<select>
				<option value="0">---</option>
				<option value="1">Viet Nam</option>
				<option value="2">Korea</option>
				<option value="3">Japan</option>
			
			</select>
			
			</div>
		</div>
		
		<div class="tit-and-input">
			<div class="title-input">Nơi công tác</div>
			<div class="input"><input style="width:265px" type="text"></div>
		</div>
		
			<div class="tit-and-input">
		<input type="submit" value="Cập nhật thông tin">
			</div>
		
		</form>
	</div>
	
	
	</div> <!-- het div content -->
	
	</div><!-- het div main -->
	<jsp:include page="../footer.jsp"></jsp:include>
	
	
	<!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="/tienganhchobe//js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="/tienganhchobe//js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="/tienganhchobe//js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="/tienganhchobe//js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="/tienganhchobe//js/active.js"></script>
</body>
</html>