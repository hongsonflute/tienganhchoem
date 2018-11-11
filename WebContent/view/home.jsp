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
    <title>Tiếng Anh Cho Bé | Home</title>

    <!-- Favicon -->
    <link rel="icon" href="<%=request.getContextPath() %>/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/style.css">

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="banner.jsp"></jsp:include>
	<jsp:include page="content.jsp"></jsp:include>
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