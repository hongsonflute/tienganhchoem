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
    .member-slidebar{
    	
    	width:300px;
    	height:580px;
    	color:#000;
    	margin-left:10px;
    	margin-top:10px;
    	margin-bottom:10px;
    	border:1px solid;
    }
    
    
    .member-main{
    	width:90%;
    	height:600px;
    	border:1px solid;
    	margin: 20px auto;
    	position: relative;
    	
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