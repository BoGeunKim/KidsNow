<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>KidsNow - Admin Page</title>

<!-- Bootstrap core CSS-->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

<!-- Page level plugin CSS-->
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin.css" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.min.css">


</head>

<body id="page-top">

	<c:import url="adminHead.jsp"/>

	<div id="wrapper">

		<c:import url="adminMenu.jsp"/>

		<!-- 내용 부분 -->
		<div id="content-wrapper">

			<div class="container-fluid">

				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="adminMain.do">관리자</a></li>
					<li class="breadcrumb-item active">원장님 신청목록</li>
				</ol>
				
				<!-- DataTables Example -->
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-table"></i> Data Table Example
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" style="width: 100%; text-align: center;"
								cellspacing="0">
								<thead>
									<tr>
										<th>번호</th>
										<th>아이디</th>
										<th>원장명</th>
										<th>전화번호</th>
										<th>유치원명</th>
										<th>유치원지역</th>
										<th>사업자등록번호</th>
										<th>신청날짜</th>
										<th>수락/거절</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${askList }">
									<tr>
										<td>${item.rownum }</td>
										<td>${item.userId }</td>
										<td>${item.userName }</td>
										<td>${item.userTel }</td>
										<td>${item.schoolName }</td>
										<td>${item.sigunguName }</td>
										<td>${item.businessLicense }</td>
										<td>${item.signupDate }
										<td>
											<input type="button" id="check" class="btn btn-success" value="확인">
										</td>
									</tr>
									</c:forEach>
								</tbody>
								<tfoot>
									<tr>
										<th>번호</th>
										<th>아이디</th>
										<th>원장명</th>
										<th>전화번호</th>
										<th>유치원명</th>
										<th>유치원지역</th>
										<th>사업자등록번호</th>
										<th>신청날짜</th>
										<th>수락/거절</th>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
					<div class="card-footer small text-muted">Updated yesterday
						at 11:59 PM</div>
				</div>

			</div>
			<!-- /.container-fluid -->

			<!-- Sticky Footer -->
			<footer class="sticky-footer">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright Â© Your Website 2018</span>
					</div>
				</div>
			</footer>

		</div>
		<!-- /.content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">Ã</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="logout.do">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Page level plugin JavaScript-->
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="vendor/datatables/jquery.dataTables.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin.min.js"></script>

	<!-- Demo scripts for this page-->
	<script src="js/demo/datatables-demo.js"></script>
	<script src="js/demo/chart-area-demo.js"></script>

</body>

</html>
