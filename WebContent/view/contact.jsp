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
    <link rel="icon" href="<%=request.getContextPath() %>/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/style.css">

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	

	<!-- ##### Contact Area Start ##### -->
    <section class="contact-area">
        <div class="container">
            <div class="row">
                <!-- Contact Info -->
                <div class="col-12 col-lg-6">
                    <div class="contact--info mt-50 mb-100">
                        <h4>Thông tin liên hệ</h4>
                        <ul class="contact-list">
                            <li>
                                <h6><i class="fa fa-clock-o" aria-hidden="true"></i> Giờ làm việc</h6>
                                <h6>9:00 AM - 18:00 PM</h6>
                            </li>
                            <li>
                                <h6><i class="fa fa-phone" aria-hidden="true"></i> Số điện thoại</h6>
                                <h6>0965 439 069</h6>
                            </li>
                            <li>
                                <h6><i class="fa fa-envelope" aria-hidden="true"></i> Email</h6>
                                <h6>hongsonflute@gmail.com</h6>
                            </li>
                            <li>
                                <h6><i class="fa fa-map-pin" aria-hidden="true"></i> Địa chỉ</h6>
                                <h6>ĐH Công Nghiệp Hà Nội</h6>
                            </li>
                        </ul>
                    </div>
                </div>

                
       
            </div>
        </div>
    </section>
    <!-- ##### Contact Area End ##### -->
	
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