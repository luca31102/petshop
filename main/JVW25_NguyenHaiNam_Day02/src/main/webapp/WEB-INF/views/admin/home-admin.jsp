<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${classpath}/admin/assets/images/favicon.png">
    <title>${projectTittle }</title>
    
    <!-- variables -->
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
     
     <!-- Custome css resource file -->
    <jsp:include page="/WEB-INF/views/admin/layout/css.jsp"></jsp:include>
   
</head>
<body>
<!-- Preloader - style you can find in spinners.css -->
<!-- 	<jsp:include page="/WEB-INF/views/admin/layout/preloader.jsp"></jsp:include>  -->

<!-- Main wrapper - style you can find in pages.scss -->
	<div id="main-wrapper" data-theme="light" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
        data-sidebar-position="fixed" data-header-position="fixed" data-boxed-layout="full">
        
        <!-- Topbar header - style you can find in pages.scss -->
        <jsp:include page="/WEB-INF/views/admin/layout/header.jsp"></jsp:include>
        <!-- End Topbar header - style you can find in pages.scss -->
        
         <!-- Left Sidebar - style you can find in sidebar.scss  -->
         <jsp:include page="/WEB-INF/views/admin/layout/menuleft.jsp"></jsp:include>
         <!-- End Left Sidebar - style you can find in sidebar.scss  -->
         
         <!-- Page wrapper  -->
         <div class="page-wrapper">
         	
         	<!-- Bread crumb and right sidebar toggle -->
         	<jsp:include page="/WEB-INF/views/admin/layout/breadcrumb.jsp"></jsp:include>
         	<!-- End Bread crumb and right sidebar toggle -->
         	
         	<!-- Container fluid  -->
         	<div class="container-fluid">
         	
         		<!-- Start First Cards -->
         		<jsp:include page="/WEB-INF/views/admin/layout/homecontent/startfirstcart.jsp"></jsp:include>
         		<!-- End Start First Cards -->
         		
         		<!-- Start Sales Charts Section -->
         		<jsp:include page="/WEB-INF/views/admin/layout/homecontent/salechart.jsp"></jsp:include>
         		<!-- End Sales Charts Section -->
         		
         		<!-- Start Location and Earnings Charts Section -->
         		<jsp:include page="/WEB-INF/views/admin/layout/homecontent/earningchart.jsp"></jsp:include>
         		<!-- End Location and Earnings Charts Section -->
         		
         		<!-- Start Top Leader Table -->
         		<jsp:include page="/WEB-INF/views/admin/layout/homecontent/topleader.jsp"></jsp:include>
         		<!-- End Top Leader Table -->
         	
         	</div>
         	<!-- End Container fluid  -->
         	
         	<!-- Footer -->
         	<jsp:include page="/WEB-INF/views/admin/layout/footer.jsp"></jsp:include>
         	<!-- Footer -->
         </div>
    </div>
	
	<!-- Slider js: All Jquery-->
    <jsp:include page="/WEB-INF/views/admin/layout/js.jsp"></jsp:include>
</body>
</html>