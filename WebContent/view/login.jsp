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
    <title>Tiếng Anh Cho Bé  | Login</title>

    <!-- Favicon -->
    <link rel="icon" href="<%=request.getContextPath() %>/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/style.css">
    
    <script type="text/javascript">
    	function validateForm(){
    		var username = document.getElementById('username').value;
    	    var password = document.getElementById('password').value;
    	    
    	    if (username == ''){
    	         /* alert('Bạn phải nhập username!'); */
    	         document.getElementById("loi-username").innerHTML="Username không được trống!";
    	         document.getElementById("username").focus();
    	         return false;
    	    }
    	    else{
    	    	document.getElementById("loi-username").innerHTML="";
    	    	
    	    	
    	    }
    	     if (password == '')
    	    {
    	     /*    alert('Bạn phải nhập password!'); */
    	        document.getElementById("loi-password").innerHTML="Password không được trống!";
    	        document.getElementById("password").focus();
    	    }
    	     
    	    else{
    	        /* alert('Dữ liệu hợp lệ, ta có thể chấp nhận submit form'); */
    	        document.getElementById("loi-password").innerHTML="";
    	        return true;
    	    }
    	 
    	    return false;
    		
    	}
    	
    </script>
    
   
</head>
<body>
<%
		String erro_login=null;
		if(request.getAttribute("erro_login")!=null)
		{
			erro_login=(String)request.getAttribute("erro_login");
		}
%>	
	<jsp:include page="header.jsp"></jsp:include>

	 
	<div class="container" >
	<!-- ##### Register Now Start ##### -->
    <section class="register-now section-padding-100-0 d-flex justify-content-between align-items-center" style="background-image: url(img/core-img/texture.png);">
        <!-- Register Contact Form -->
        <div class="register-contact-form mb-100" style="margin-left:300px; ">
            <div class="container-fluid" >
                <div class="row">
                    <div class="col-12">
                        <div class="forms">
   
                            <h5 style="text-align: center;">Đăng Nhập Tài Khoản</h5>
                            <form action="<%=request.getContextPath() %>/loginController" method="post" onsubmit="return validateForm()" >
                                <div class="row">
                                       <div class="col-12 col-lg-12">
                                        <div class="form-group">
                                             <%if(erro_login!=null){%><p style="color:red"><%=erro_login %></p> <%}%>                                     
                                        </div>
                                    </div>
                                <div class="col-12 col-lg-12">
                                        <div class="form-group">
                                            <span style=" color:red" id="loi-username">                                         
                                        </div>
                                    </div>
                                    <div class="col-12 col-lg-3">
                                        <div class="form-group" style="margin-top:10px" >
                                           <b>Username:</b> 
                                        </div>
                                    </div>
                                    <div class="col-12 col-lg-9">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name=username id="username" placeholder="Username">
                                        </div>
                                    </div>
                                    
                                    <div class="col-12 col-lg-12">
                                        <div class="form-group">
                                            <span style=" color:red" id="loi-password">
                                        </div>
                                    </div>
                                    <div class="col-12 col-lg-3">
                                        <div class="form-group" style="margin-top:10px">
                                           <b>Password:</b> 
                                        </div>
                                    </div>
                                    <div class="col-12 col-lg-9">
                                        <div class="form-group">
                                            <input class="form-control" type="password" name=password id="password" placeholder="Password">
                                        </div>
                                    </div>
                                    
                                        
                                    
                                    <div class="col-12">
                                        <button class="btn clever-btn w-100">Đăng Nhập</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	
</div>
	<jsp:include page="footer.jsp"></jsp:include>
	
	<!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="<%=request.getContextPath() %>/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="<%=request.getContextPath() %>/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="<%=request.getContextPath() %>/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="<%=request.getContextPath() %>/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="<%=request.getContextPath() %>/js/active.js"></script>
</body>
</html>