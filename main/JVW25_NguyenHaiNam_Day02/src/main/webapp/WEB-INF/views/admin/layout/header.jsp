<header class="topbar" data-navbarbg="skin6">
	<nav class="navbar top-navbar navbar-expand-md">
	
		<!-- Logo -->
		 <jsp:include page="/WEB-INF/views/admin/layout/headercontent/logo.jsp"></jsp:include>
		<!-- End Logo -->
		
		
		<div class="navbar-collapse collapse" id="navbarSupportedContent">
			<!-- ============================================================== -->
			<!-- toggle and nav items -->
			<!-- ============================================================== -->
			<ul class="navbar-nav float-left mr-auto ml-3 pl-1">
				
				<!-- Notification -->
				<jsp:include page="/WEB-INF/views/admin/layout/headercontent/notification.jsp"></jsp:include>
				<!-- End Notification -->
				
				<!-- create new>  -->
				<jsp:include page="/WEB-INF/views/admin/layout/headercontent/language.jsp"></jsp:include>
				<!-- end create new>  -->			
			</ul>
			
			<!-- Right side toggle and nav items -->
			<jsp:include page="/WEB-INF/views/admin/layout/headercontent/userprofile.jsp"></jsp:include>
			
			<!-- End Right side toggle and nav items -->	
				
		</div>
	</nav>
</header>