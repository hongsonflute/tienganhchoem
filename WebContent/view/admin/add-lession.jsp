<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Paper Dashboard by Creative Tim</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="<%= request.getContextPath() %>/view/admin/assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="<%= request.getContextPath() %>/view/admin/assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="<%= request.getContextPath() %>/view/admin/assets/css/paper-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="<%= request.getContextPath() %>/view/admin/assets/css/demo.css" rel="stylesheet" />


    <!--  Fonts and icons     -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="<%= request.getContextPath() %>/view/admin/assets/css/themify-icons.css" rel="stylesheet">
    
    <script type="text/javascript" src="<%=request.getContextPath() %>/ckeditor/ckeditor.js"></script>

</head>
<body>
		<%
		String msg="";
		
			if(request.getAttribute("erro_addlession")!=null)
			{
				msg=(String)request.getAttribute("erro_addlession");
			}
			if(request.getAttribute("ok_addlession")!=null)
			{
				msg=(String) request.getAttribute("ok_addlession");
			}
		
		%>


	<div class="wrapper">
	      <div class="main-panel">
		
			<jsp:include page="slidebar.jsp"></jsp:include>
			<jsp:include page="admin-header.jsp"></jsp:include>
			
			<div class="content">
      		<div class="container-fluid">
      		<%if(msg!=null) 
      		{%>
				<div class="row">
					<div class="col-md-6">
					<span style="color:red"><%=msg %></span>
					</div>
				</div>
			<%}
			%>
					<h3>Thêm Bài Học</h3>
					<table>
					<form action="<%=request.getContextPath() %>/addLessionController" method="post">
					
					<tr>
					<th>Thể Loại</th>
					<td>
						<select name="typelession" id="">
							<option value="1">Video</option>
							<option value="2">Hình ảnh</option>
						</select>
					</td>
					</tr>
					<tr>
					<th>Tiêu Đề</th>
					<td><input type="text" name="lessionTitle" style="width:375px"></td>
					</tr>
					<tr>
					<th>Hình ảnh</th>
					<td><input type="file" name="lessionImages"></td>
					</tr>
					<tr>
					<th>Mô Tả</th>
					<td><textarea cols="50" rows="5" name="lessionDescribe"></textarea></td>
					</tr>
					<tr>
					<tr>
					<th>Nội Dung</th>
					<td>
					<textarea rows="" cols="" id="editor" name="editor"></textarea>
					<script>
					CKEDITOR.replace('editor');
					</script>
					</td>
					</tr>
					<th>Hành Động</th>
					<td><input type="submit" value="POST LESSION"></td>
					</tr>
					</form>
					</table>
	  	</div>
	  </div>

			<jsp:include page="admin-footer.jsp"></jsp:include>
		</div>
	</div>
</body>


<!--   Core JS Files   -->
    <script src="<%= request.getContextPath() %>/view/admin/assets/js/jquery.min.js" type="text/javascript"></script>
	<script src="<%= request.getContextPath() %>/view/admin/assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="<%= request.getContextPath() %>/view/admin/assets/js/bootstrap-checkbox-radio.js"></script>

	<!--  Charts Plugin -->
	<script src="<%= request.getContextPath() %>/view/admin/assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="<%= request.getContextPath() %>/view/admin/assets/js/bootstrap-notify.js"></script>
    
    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="<%= request.getContextPath() %>/view/admin/assets/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="<%= request.getContextPath() %>/view/admin/assets/js/demo.js"></script>

</html>