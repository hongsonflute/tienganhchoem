<%@page import="tienganhchoem.webmvc.dao.UsersDAO"%>
<%@page import="tienganhchoem.webmvc.model.Users"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="<%=request.getContextPath() %>/view/admin/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="<%=request.getContextPath() %>/view/admin/assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Paper Dashboard by Creative Tim</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="<%=request.getContextPath() %>/view/admin/assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="<%=request.getContextPath() %>/view/admin/assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="<%=request.getContextPath() %>/view/admin/assets/css/paper-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="<%=request.getContextPath() %>/view/admin/assets/css/demo.css" rel="stylesheet" />


    <!--  Fonts and icons     -->
    <!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet"> -->
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
   <link href="<%=request.getContextPath() %>/view/admin/assets/css/themify-icons.css" rel="stylesheet">

</head>
<body>

	<%
		String username=null;
		if(session.getAttribute("username")!=null)
		{
			username=(String)session.getAttribute("username");
		}
		Users u=new Users();
		UsersDAO ud=new UsersDAO();
		ud.getProfileUser(u,username);
	%>
	
	
	<!-- hien thi loi cap nhat -->
	<%
		String msg=null;
			if(request.getAttribute("update_ok")!=null)
			{
				msg=(String)request.getAttribute("update_ok");
			}
			if(request.getAttribute("update_false")!=null)
			{
				msg=(String)request.getAttribute("update_false");
			}
	%>

	<div class="wrapper">
	      <div class="main-panel">
			<jsp:include page="slidebar.jsp"></jsp:include>
			<jsp:include page="admin-header.jsp"></jsp:include>
	
			<div class="content">
      		<div class="container-fluid">
      		
      		<!-- bat dau thong tin nguoi dung-->
      		
      		 <div class="row">
                    <div class="col-lg-4 col-md-5">
                        <div class="card card-user">
                            <div class="image">
                                <img src="<%=request.getContextPath() %>/view/admin/assets/img/background.jpg" alt="..."/>
                            </div>
                            <div class="content">
                                <div class="author">
                                  <img class="avatar border-white" src="<%=request.getContextPath() %>/view/admin/assets/img/faces/face-2.jpg" alt="..."/>
                                  <h4 class="title"><%=username %> <br/>
                                     <a href="#"><small>@chetfaker</small></a>
                                  </h4>
                                </div>
                                 <p class="description text-center">
                                    "I like the way you work it <br>
                                    No diggity <br>
                                    I wanna bag it up"
                                </p> 
                            </div>
                            <hr>
                            <div class="text-center">
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-1">
                                        <h5>12<br /><small>Files</small></h5>
                                    </div>
                                    <div class="col-md-4">
                                        <h5>2GB<br /><small>Used</small></h5>
                                    </div>
                                    <div class="col-md-3">
                                        <h5>24,6$<br /><small>Spent</small></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Team Members</h4>
                            </div>
                            <div class="content">
                                <ul class="list-unstyled team-members">
                                            <li>
                                                <div class="row">
                                                    <div class="col-xs-3">
                                                        <div class="avatar">
                                                            <img src="<%=request.getContextPath() %>/view/admin/assets/img/faces/face-0.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-6">
                                                        DJ Khaled
                                                        <br />
                                                        <span class="text-muted"><small>Offline</small></span>
                                                    </div>

                                                    <div class="col-xs-3 text-right">
                                                        <btn class="btn btn-sm btn-success btn-icon"><i class="fa fa-envelope"></i></btn>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="row">
                                                    <div class="col-xs-3">
                                                        <div class="avatar">
                                                            <img src="<%=request.getContextPath() %>/view/admin/assets/img/faces/face-1.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-6">
                                                        Creative Tim
                                                        <br />
                                                        <span class="text-success"><small>Available</small></span>
                                                    </div>

                                                    <div class="col-xs-3 text-right">
                                                        <btn class="btn btn-sm btn-success btn-icon"><i class="fa fa-envelope"></i></btn>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="row">
                                                    <div class="col-xs-3">
                                                        <div class="avatar">
                                                            <img src="<%=request.getContextPath() %>/view/admin/assets/img/faces/face-3.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-6">
                                                        Flume
                                                        <br />
                                                        <span class="text-danger"><small>Busy</small></span>
                                                    </div>

                                                    <div class="col-xs-3 text-right">
                                                        <btn class="btn btn-sm btn-success btn-icon"><i class="fa fa-envelope"></i></btn>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                            </div>
                        </div>
                    </div> 
      		
      	
      		
      		 <!--  start div profile  -->
					<div class="col-lg-8 col-md-7">
                        <div class="card">
                            <div class="header">
                            <!--   thông báo lỗi hoặc thành công khi cập nhật: -->
                        <%if(msg!=null) {%>
                        <div class="row">
                       <span style="color:red"><%=msg %></span>
                        </div>
                        <%} %>
                                <h4 class="title">Chỉnh sửa thông tin</h4>
                            </div>
                            <div class="content">
                                <form action="<%=request.getContextPath() %>/addProfileUserController" method="post">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>Tên Người dùng</label>
                                                <input type="text" class="form-control border-input" disabled placeholder="Tên người dùng" value="<%=username %>" name="username">
                                                <input type="hidden" class="form-control border-input" placeholder="Tên người dùng" value="<%=username %>" name="username">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1" >Địa Chỉ Email</label>
                                                <input type="email" class="form-control border-input" placeholder="email" value="<%=u.getUser_email() %>" name="email">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label >Số Điện Thoại</label>
                                                <input type="text" class="form-control border-input" placeholder="Số điện thoại" value="<%=u.getUser_phone() %>" name="phone">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>Họ Và Tên</label>
                                                <input type="text" class="form-control border-input" placeholder="Họ và tên" value="<%=u.getUser_fullname() %>" name="fullname">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Tuổi</label>
                                                <input type="text" class="form-control border-input" placeholder="Tuổi" value="<%=u.getUser_age() %>" name="age" >
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>Giới Tính</label>
                                                <div class="form-control border-input">
                                                <input type="radio" name="sex" value="1" checked >Nam
                                                <input type="radio" name="sex" value="0" <%if(u.getUser_sex()==0){%>checked<%} %>>Nữ
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Địa Chỉ</label>
                                                <input type="text" class="form-control border-input" placeholder="Địa chỉ" value="<%=u.getUser_address() %>" name="address">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Thành Phố</label>
                                                <input type="text" class="form-control border-input" placeholder="Thành phố" value="<%=u.getUser_city() %>" name="city">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Quốc Gia</label>
                                                <input type="text" class="form-control border-input" placeholder="Quốc Gia" value="<%=u.getUser_country() %>" name="country">
                                            </div>
                                        </div>
                                        <!-- <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Mã Bưu Điện</label>
                                                <input type="number" class="form-control border-input" placeholder="ZIP Code">
                                            </div>
                                        </div> -->
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Giới Thiệu Về Bản Thân</label>
                                                <textarea rows="5" class="form-control border-input" placeholder="Here can be your description" value="Mike" name="about"><%=u.getUser_about() %>
                                              
                                   				</textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-info btn-fill btn-wd">Update Profile</button>
                                    </div>
                                    <div class="clearfix"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    
                    <!--  het div profile  -->
	  	</div>
	  </div>	
		<jsp:include page="admin-footer.jsp"></jsp:include>		
		</div>
	</div>
</body>


<!--   Core JS Files   -->
    <script src="<%=request.getContextPath() %>/view/admin/assets/js/jquery.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath() %>/view/admin/assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="<%=request.getContextPath() %>/view/admin/assets/js/bootstrap-checkbox-radio.js"></script>

	<!--  Charts Plugin -->
	<script src="<%=request.getContextPath() %>/view/admin/assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="<%=request.getContextPath() %>/view/admin/assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="<%=request.getContextPath() %>/view/admin/assets/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="<%=request.getContextPath() %>/view/admin/assets/js/demo.js"></script>

</html>