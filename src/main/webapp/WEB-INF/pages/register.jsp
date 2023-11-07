<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <html>
    <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body>
    <h2 class="text-center fs-1 my-5">Welcome to Register Page !!!</h2>
    <div class="container d-flex justify-content-center align-items-center">
    <form class=" p-5 form-control w-50" action="hello" method="post">
    <p>FirstName : <input type="text" name="firstname"></p>
    <p>LastName : <input type="text" name="lastname"></p>
    <p>Sports : <br><input type = "checkbox" name = "name" value="cricket">Cricket</p>
                <input type = "checkbox" name = "name" value="football">FootBall</p>
                <input type = "checkbox" name = "name" value="tabletennis">TableTennis</p>
                <input type = "checkbox" name = "name" value="caromboard">CaromBoard
    </p>
   <p>Gender : <input type="radio" >Male <input type="radio">Female</p>
   <p>Email : <input type="email" name="email"></p>
   <p>Username : <input type="text" name="username"></p>
   <p>Password : <input type="text" name="password"></p>


    <% if(request.getAttribute("error") != null){
        out.print("<p>Invalid Credentials!!!</p>");
        } %>
        <input class="btn btn-warning" type="submit" value="register"/>
    </form>
    </body>
    </html>


