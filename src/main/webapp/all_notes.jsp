<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>


<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Note Taker: All notes</title>
<%@include file="components/allcss.jsp"%>

</head>
<body>
	<!-- container-fluid p-0 m-0 -->
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes:</h1>

		<div class="row">
			<div class="col-12">

				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>

				<div class="card mt-3">
					<img src="img/note.png" class="card-img-top m-4 mx-auto"
						style="max-width: 100px;" alt="...">
					<div class="card-body px-5 ">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>

						<%
						// Assuming note.getAddedDate() returns a Date object
						Date addedDate = note.getAddedDate();
						SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss a"); // Specify your desired format
						String formattedDate = formatter.format(addedDate);
						%>

						<p>
							<b class="text-primary">Last Update: <%=formattedDate%></b>
						</p>

						<div class="container text-center mt-2">
							<a href="DeleteServlet?note_id=<%=note.getId()%>"
								class="btn btn-danger">Delete</a> <a
								href="edit.jsp?note_id=<%=note.getId()%>"
								class="btn btn-primary">Update</a>
						</div>

					</div>
				</div>


				<%
				}

				s.close();
				%>


			</div>
		</div>




	</div>

</body>
</html>