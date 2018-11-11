<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>sliderbar</title>
</head>
<body>

	 <div class="sidebar" data-background-color="white" data-active-color="danger">

    <!--
		Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="<%=request.getContextPath() %>/view/home.jsp" class="simple-text">
                    Tiếng Anh Cho Bé
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="<%=request.getContextPath() %>/view/admin/admin-home.jsp">
                        <i class="ti-panel"></i>
                        <p>TỔNG QUAN</p>
                    </a>
                </li >
                <li>
                    <a href="<%=request.getContextPath() %>/view/admin/admin-profile.jsp">
                        <i class="ti-user"></i>
                        <p>THÔNG TIN CÁ NHÂN</p>
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/view/admin/lession.jsp">
                        <i class="ti-view-list-alt"></i>
                        <p>DANH SÁCH BÀI HỌC</p>
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/view/admin/add-lession.jsp">
                        <i class="ti-text"></i>
                        <p>THÊM BÀI HỌC</p>
                    </a>
                </li>
                <%if(session.getAttribute("admin")!=null) 
                {%>
                <li>
                    <a href="<%=request.getContextPath() %>/view/admin/approve-lession.jsp">
                        <i class="ti-pencil-alt2"></i>
                        <p>DUYỆT BÀI HỌC</p>
                    </a>
                </li>
       
                <li>
                    <a href="<%=request.getContextPath() %>/view/admin/account.jsp">
                        <i class="ti-map"></i>
                        <p>QUẢN LÝ TÀI KHOẢN</p>
                    </a>
                </li>
                
                 <%}
                %>
                <li>
                    <a href="<%=request.getContextPath() %>/view/admin/notification.jsp">
                        <i class="ti-bell"></i>
                        <p>THÔNG BÁO</p>
                    </a>
                </li>
				<li>
                    <a href="<%=request.getContextPath() %>/view/admin/about-system.jsp">
                        <i class="ti-export"></i>
                        <p>THÔNG TIN HỆ THỐNG HỆ THỐNG</p>
                    </a>
                </li>
            </ul>
    	</div>
    </div>
	
</body>
</html>