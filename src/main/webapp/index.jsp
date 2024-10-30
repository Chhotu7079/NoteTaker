<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Note Taker : Home page</title>
<%@include file="components/allcss.jsp"%>

</head>

<body>

	<!-- container-fluid p-0 m-0 -->
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 style ='text-align:center;'>This is your home page</h1>
		
		<br>
		
		<div class="card shadow bg-white py-5">
		<img alt="" class="image-fluid mx-auto" style="max-width: 400px" src="img/note.png">
		<h1 class="text-primary text-uppercase text-center mt-3">Start taking your notes</h1>
		
		<div class="container text-center">
<button class="btn btn-outline-primary text-center">Start here</button>	
</div>
		
		</div>
	</div>





</body>

</html>