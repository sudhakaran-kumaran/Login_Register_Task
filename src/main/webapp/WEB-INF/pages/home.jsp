<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<h2 class="text-danger mt-4 mx-5">USER DETAILS</h2>
<form>
<p class="fs-4 mt-3 mx-5">FirstName : ${firstname}</p>
<p class="fs-4 mx-5">LastName : ${lastname}</p>
<p class="fs-4 mx-5">Sports : ${sports}</p>
<p class="fs-4 mx-5">Gender : ${gender}</p>
<p class="fs-4 mx-5">Course : ${course}</p>
<p class="fs-4 mx-5">Email : ${email}</p>
</form>
</body>
</html>