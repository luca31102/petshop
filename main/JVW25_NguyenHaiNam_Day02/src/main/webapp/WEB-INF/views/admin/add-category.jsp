<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- directive của JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="${classpath}/admin/assets/images/favicon.png">
<title>${projectTittle }</title>

<!-- variables -->
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>

<!-- Custome css resource file -->
<jsp:include page="/WEB-INF/views/admin/layout/css.jsp"></jsp:include>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>


	<!-- End test -->
	<!-- ============================================================== -->
	<!-- Preloader - style you can find in spinners.css -->
	<!-- ============================================================== -->

	<!-- ============================================================== -->
	<!-- Main wrapper - style you can find in pages.scss -->
	<!-- ============================================================== -->
	<div id="main-wrapper" data-theme="light" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed"
		data-boxed-layout="full">

		<!-- Topbar header - style you can find in pages.scss -->
		<jsp:include page="/WEB-INF/views/admin/layout/header.jsp"></jsp:include>
		<!-- End Topbar header -->

		<!-- Left Sidebar - style you can find in sidebar.scss  -->
		<jsp:include page="/WEB-INF/views/admin/layout/menuleft.jsp"></jsp:include>
		<!-- End Left Sidebar - style you can find in sidebar.scss  -->

		<!-- Page wrapper  -->
		<!-- ============================================================== -->
		<div class="page-wrapper">
			<!-- ============================================================== -->
			<!-- Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			<div class="page-breadcrumb">
				<div class="row">
					<div class="col-7 align-self-center">
						<h4
							class="page-title text-truncate text-dark font-weight-medium mb-1">Add
							Category</h4>
						<div class="d-flex align-items-center">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb m-0 p-0">
									<li class="breadcrumb-item"><a href="index.html"
										class="text-muted">Apps</a></li>
									<li class="breadcrumb-item text-muted active"
										aria-current="page">Category List</li>
								</ol>
							</nav>
						</div>
					</div>
					<div class="col-5 align-self-center">
						<div class="customize-input float-right">
							<select
								class="custom-select custom-select-set form-control bg-white border-0 custom-shadow custom-radius">
								<option selected>Aug 19</option>
								<option value="1">July 19</option>
								<option value="2">Jun 19</option>
							</select>
						</div>
					</div>
				</div>
			</div>
			<!-- ============================================================== -->
			<!-- End Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- ============================================================== -->
				<!-- Start Page Content -->
				<!-- ============================================================== -->
				<!-- basic table -->
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<sf:form class="form" action="${classpath}/save-add-category"
									method="post" modelAttribute="category"
									enctype="multipart/form-data">
									<div class="form-body">
										<div class="row">

											<div class="col-md-6">
												<div class="form-group mb-4">
													<label for="name">Category name</label>
													<sf:input path="name" type="text" class="form-control"
														id="name" name="name" placeholder="Category name"></sf:input>
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-6">
												<div class="form-group mb-4">
													<label for="createdate">Create date</label>

													<sf:input path="createDate" class="form-control"
														type="date" id="createDate" name="createDate"
														value="${createDate }"></sf:input>
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group mb-4">
													<label for="updatedate">Update date</label>

													<sf:input path="updateDate" class="form-control"
														type="date" id="updateDate" name="updateDate"
														value="${updateDate }"></sf:input>
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-6">
												<div class="form-group mb-4">
													<label for="category">Create by</label>
													<sf:select path="createBy" class="form-control"
														id="createBy">
														<sf:options items="${users }" itemValue="id"
															itemLabel="username"></sf:options>
													</sf:select>
												</div>
											</div>

											<div class="col-md-6">
												<div class="form-group mb-4">
													<label for="category">Update by</label>
													<sf:select path="updateBy" class="form-control"
														id="updateBy">
														<sf:options items="${users }" itemValue="id"
															itemLabel="username"></sf:options>
													</sf:select>
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-12">
												<div class="form-group mb-4">
													<label for="description">Description</label>
													<sf:textarea path="description" id="description"
														name="description" class="form-control" rows="3"
														placeholder="desription..."></sf:textarea>
												</div>
											</div>
										</div>

										<div class="row">

											<div class="col-md-10">
												<div class="form-group mb-4">
													<label for="status">&nbsp;&nbsp;&nbsp;&nbsp;</label>
													<sf:checkbox path="status" class="form-check-input"
														id="status" name="status"></sf:checkbox>
													<label for="status">Active</label>
												</div>
											</div>

										</div>


										<div class="row">
											<div class="col-md-12">
												<div class="form-group mb-4">
													<a href="${classpath }categories"
														class="btn btn-secondary active" role="button"
														aria-pressed="true"> Back to list </a>
													<button type="submit" class="btn btn-primary">Save
														category</button>
												</div>
											</div>
										</div>

									</div>
								</sf:form>
							</div>
						</div>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- End Container fluid  -->
				<!-- ============================================================== -->
				<!-- ============================================================== -->
				<!-- footer -->
				<!-- ============================================================== -->
				<jsp:include page="/WEB-INF/views/admin/layout/footer.jsp"></jsp:include>
				<!-- ============================================================== -->
				<!-- End footer -->
				<!-- ============================================================== -->
			</div>
			<!-- ============================================================== -->
			<!-- End Page wrapper  -->
			<!-- ============================================================== -->
		</div>
		<!-- ============================================================== -->
		<!-- End Wrapper -->
		<!-- ============================================================== -->
		<!-- End Wrapper -->
		<!-- ============================================================== -->

		<!-- Slider js: All Jquery-->
		<jsp:include page="/WEB-INF/views/admin/layout/js.jsp"></jsp:include>
</body>

</html>