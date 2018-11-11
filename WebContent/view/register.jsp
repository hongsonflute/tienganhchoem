<%@page import="java.io.PrintWriter"%>
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
    <title>Tiếng Anh Cho Bé  |Register</title>

    <!-- Favicon -->
    <link rel="icon" href="/tienganhchobe/img/core-img/favicon.ico">
    

    <!-- Stylesheet -->
    <link rel="stylesheet" href=" <%= request.getContextPath() %>/style.css">
   
    
    <script type="text/javascript">
    	function validateForm(){
    		var username = document.getElementById('username').value;
    	    var password = document.getElementById('password').value;
    	    var email = document.getElementById('email').value;
    	    var fullname = document.getElementById('fullname').value;
    	    var password2 = document.getElementById('password2').value;
    	    if (fullname == '')
    	    {
    	   /*     alert('Bạn phải nhập đủ thông tin!');  */
    	    	document.getElementById("loi-fullname").innerHTML="Họ và Tên không được để trống!";
    	    	document.getElementById("fullname").focus();
    	    	return false;
    	    }
 		 	else{
 		 			document.getElementById("loi-fullname").innerHTML="";
    	  	  	}
    	    if (email == '')
    	    {
    	        /* alert('Bạn phải nhập đủ thông tin!'); */
    	    	document.getElementById("loi-email").innerHTML="Email không được để trống!";
    	    	document.getElementById("email").focus();
    	    	return false;
    	    }
    	  
    	    else
    	    {
    	    	document.getElementById("loi-email").innerHTML="";
    	    }
    	    if (username == ''){
       	     /*    alert('Bạn phải nhập đủ thông tin!'); */
       	     document.getElementById("loi-username").innerHTML="Username không được để trống!";
       	  	document.getElementById("username").focus();
       	     return false;
       	    }
       	    else{
       	    	document.getElementById("loi-username").innerHTML="";
       	    }
       	    if (password == '')
       	    {
       	    	document.getElementById("loi-password").innerHTML="Password không được để trống!";
       	    	document.getElementById("password").focus();
       	    	return false;
       	    }
       	    else{
       	    	document.getElementById("loi-password").innerHTML="";
       	    	
       	    }
       	    if(password!=password2)
       	    	{
	       	    	document.getElementById("loi-password2").innerHTML="Password không khớp nhau!";
	       	    	document.getElementById("password2").focus();
	       	    	return false;
       	    	}
       	    else{
       	    		document.getElementById("loi-password2").innerHTML="";
       	    	} 
       	    return true;
       	    
    	}	
    </script>
    <style type="text/css">
    .erro{ color:red; }
    </style>
</head>
<body>
	
	<%
		String erro_mail=null;
		String erro_username=null;
		if(request.getAttribute("erro_mail")!=null){
		erro_mail =(String) request.getAttribute("erro_mail");
		}
		if(request.getAttribute("erro_username")!=null){
		erro_username =(String) request.getAttribute("erro_username");
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
                      	
                            <h5 style="text-align: center;">Đăng Ký Tài Khoản</h5>
                         
                            <form action="<%=request.getContextPath() %>/UsersController" method="post" onsubmit="return validateForm()" >
                                <div class="row">
                                       <div class="col-12 col-lg-12">
                                        <div class="form-group">
                                              <%if(erro_mail!=null){%><p style="color:red"><%=erro_mail %></p> <%}%> 
                                              <%if(erro_username!=null){%><p style="color:red"><%=erro_username %></p> <%}%>                                    
                                        </div>
                                    </div>
                                	<div class="col-12 col-lg-12">
	                                        <div class="form-group">
	                                            <span id="loi-fullname" class="erro"></span>
	                                        </div>
                                    	</div>
                                    	<div class="col-12 col-lg-3">
                                        <div class="form-group" style="margin-top:10px" >
                                           <b>Fullname:</b> 
                                        </div>
                                    </div>
                                	<div class="col-12 col-lg-9">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name=fullname id="fullname" placeholder="Fullname">
                                        </div>
                                    </div>
                                    
                                     <div class="col-12 col-lg-12">
	                                        <div class="form-group">
	                                            <span id="loi-email" class="erro"></span>
	                                        </div>
                                    	</div>
                                    	<div class="col-12 col-lg-3">
                                        <div class="form-group" style="margin-top:10px" >
                                           <b>Email:</b> 
                                        </div>
                                    </div>
                                    <div class="col-12 col-lg-9">
                                        <div class="form-group">
                                            <input type="email" class="form-control" name=email id="email" placeholder="Email">
                                        </div>
                                    </div>
                                   <div class="col-12 col-lg-12">
                                        <div class="form-group">
                                            <span id="loi-username" class="erro"></span>                                       
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
	                                             <span id="loi-password" class="erro"></span>
	                                        </div>
                                    	</div>
                                    	<div class="col-12 col-lg-3">
                                        <div class="form-group" style="margin-top:10px" >
                                           <b>Password:</b> 
                                        </div>
                                    </div>
                                    <div class="col-12 col-lg-9">
                                        <div class="form-group">
                                            <input class="form-control" type="password" name=password id="password" placeholder="Password">
                                        </div>
                                    </div>
                                     <div class="col-12 col-lg-12">
	                                        <div class="form-group">
	                                            <span id="loi-password2" class="erro"></span>
	                                        </div>
                                    	</div>
                                    	<div class="col-12 col-lg-3">
                                        <div class="form-group" style="margin-top:10px" >
                                           <b>Re-Pass:</b> 
                                        </div>
                                    </div>
                                    <div class="col-12 col-lg-9">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name=password2 id="password2" placeholder=" Re-Password">
                                        </div>
                                    </div>
  
                                    <div class="col-12">
                                        <button class="btn clever-btn w-100">Đăng Ký</button>
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
    <script src="<%= request.getContextPath() %>/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="<%= request.getContextPath() %>/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="<%= request.getContextPath() %>/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="<%= request.getContextPath() %>/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="<%= request.getContextPath() %>/js/active.js"></script>
</body>
</html>