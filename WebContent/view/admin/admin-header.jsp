<%@page import="tienganhchoem.webmvc.model.Users"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>header</title>
</head>
<body>

<!--câu lệnh dưới dùng để kiểm tra session của người dùng xem nó là loại gì để phân quyền hiển 
thị các chức năng 
 -->
	  <% Users u=null;// khao báo 1 kiểu users mới
	  	if(session.getAttribute("admin")!=null){ 
	  		u=(Users) session.getAttribute("admin");
	  	}
	  	else if(session.getAttribute("teacher")!=null)
	  	{
	  		u=(Users) session.getAttribute("teacher");
	  	}
	  %>
	  <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="<%=request.getContextPath() %>/view/admin/admin-home.jsp">HỆ THỐNG QUẢN TRỊ</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                    <%if(u!=null)
                    {%><li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<p>Xin Chào ,<%=u.getUser_name() %></p>

                            </a>
                        </li><%}
                    	%>
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-panel"></i>
								<p>Stats</p>
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="ti-bell"></i>
                                    <p class="notification">5</p>
									<p>Thông Báo</p>
									<b class="caret"></b>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Notification 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Another notification</a></li>
                              </ul>
                        </li>
                        
                        
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="ti-settings"></i>
									<p>Cài Đặt</p>
									<b class="caret"></b>
                              </a>
                              <ul class="dropdown-menu">
                              <%if(u!=null)
                              {%>
                               <li><a href="<%=request.getContextPath() %>/logoutController">Đăng Xuất</a></li>
                              <%}
                              else
                              {%>
                              <li><a href="<%=request.getContextPath() %>/view/login.jsp">Đăng Nhập</a></li>
                             <%}  
                            	  %>
                               
                              </ul>
                        </li>
                        
                        
						<!-- <li>
                            <a href="#">
								<i class="ti-settings"></i>
								<p>Settings</p>
                            </a>
                        </li> -->
                    </ul>

                </div>
            </div>
        </nav>
	  

	
</body>
</html>