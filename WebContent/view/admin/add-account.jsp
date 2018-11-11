<%@page import="tienganhchoem.webmvc.model.Users"%>
<%@page import="tienganhchoem.webmvc.dao.UsersDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="<%=request.getContextPath()%>/view/admin/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="<%=request.getContextPath()%>/view/admin/assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Paper Dashboard by Creative Tim</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="<%=request.getContextPath()%>/view/admin/assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="<%=request.getContextPath()%>/view/admin/assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="<%=request.getContextPath()%>/view/admin/assets/css/paper-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="<%=request.getContextPath()%>/view/admin/assets/css/demo.css" rel="stylesheet" />


    <!--  Fonts and icons     -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="<%=request.getContextPath()%>/view/admin/assets/css/themify-icons.css" rel="stylesheet">
	<script type="text/javascript">
		function xacnhan() {
			return confirm("bạn có muốn thêm không?");
		}
		
	
	</script>
	
	
	
</head>
<body>

<%
	UsersDAO ud=new UsersDAO();
%>

<%
	String msg="";
	if(request.getAttribute("addUser_ok")!=null)
	{
		msg=(String)request.getAttribute("addUser_ok");
	}
	if(request.getAttribute("addUser_erro")!=null)
	{
		msg=(String)request.getAttribute("addUser_erro");
		
	}
	
%>
	<div class="wrapper">
	      <div class="main-panel">
		
			 <jsp:include page="slidebar.jsp"></jsp:include>
			<jsp:include page="admin-header.jsp"></jsp:include>
			
			<div class="content">
			
      		<div class="container-fluid">
      		<%if(msg!=null){%><div class="row"><span style="color:red"><%=msg %></span> </div><%} %>
					<div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Thêm tài Khoản</h4>
                                <p class="category">Thêm tài khoản và quyền hạn trên hệ thống</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-striped">
                                    <thead>
                                    	<th>FullName</th>
                                    	<th>Email</th>
                                    	<th>UserName</th>
                                    	<th>PassWord</th>
                                    	<th>Quyền</th>
                                    	<th>Chức Năng</th>
                                    </thead>
                                    <tbody>
             
             			
                                        <tr>
                                        <form action="<%=request.getContextPath() %>/addUserController" method="post">
                                        
                                        	<td><input type="text" name="username"></td>
                                        	<td><input type="email" name="email"></td>
                                        	<td><input type="text" name="fullname"></td>
                                        	<td><input type="password" name="password"></td>
                                        	<td>
                                        			<select name="role">
                                        			<option value="1">Admin</option>
                                        			<option value="2" >Teacher</option>
                                        			<option value="3">Student</option>
                                        			</select>
                                        	</td>
                                        	<%-- <td><a onclick=" return xacnhan() "  href="<%=request.getContextPath() %>/addUserController">Thêm tài khoản</a></td> --%>
                                        	<td> <input type="submit" value="Thêm tài khoản"></td>
                                        	</form>
                                        </tr>
                     
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
<!-- son sua dong nay de checkout master -->
	  	</div>
	  </div>
			
		</div>
		<jsp:include page="admin-footer.jsp"></jsp:include>
	</div>
	</div>
</body>


<!--   Core JS Files   -->
    <script src="<%=request.getContextPath()%>/view/admin/assets/js/jquery.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/view/admin/assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="<%=request.getContextPath()%>/view/admin/assets/js/bootstrap-checkbox-radio.js"></script>

	<!--  Charts Plugin -->
	<script src="<%=request.getContextPath()%>/view/admin/assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="<%=request.getContextPath()%>/view/admin/assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="<%=request.getContextPath()%>/view/admin/assets/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="<%=request.getContextPath()%>/view/admin/assets/js/demo.js"></script>

</html>