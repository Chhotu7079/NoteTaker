<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="components/allcss.jsp"%>
</head>
<body>

	<!-- container-fluid p-0 m-0 -->
	<div class="container">
		<%@include file="navbar.jsp"%>

		<br>
		<h1>Please fill your note details</h1>
		<br>
		<!-- add form  -->

		<form action="SaveNoteServlet" method="post">

			<div class="mb-3">
				<label for="title" class="form-label">Note title</label> <input
					name="title" required="required" type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter here">
			</div>

			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea name="content"  required="required" id="content" placeholder="Enter your content here"
					class="form-control" style="height: 300px;"></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>
	</div>



</body>
</html>