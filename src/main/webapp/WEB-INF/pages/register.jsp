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
    <p>Sports : <input type = "checkbox" name = "sports" value="cricket">Cricket
                <input type = "checkbox" name = "sports" value="football">FootBall
                <input type = "checkbox" name = "sports" value="tabletennis">TableTennis
                <input type = "checkbox" name = "sports" value="caromboard">CaromBoard</p>
   <p>Gender : <input name="gender" value="Male" type="radio" >Male <input name="gender" value="Female" type="radio">Female</p>
   <label for="course">Choose a course:</label>
     <select name="course" id="course">
       <option value="Java">Java</option>
       <option value="C">C</option>
       <option value="C++">C++</option>
       <option value="Python">Python</option>
     </select>
   <p>Email : <input type="email" name="email" class="my-2"></p>
   <p>Username : <input type="text" name="username" class="my-2"></p>
   <p>Password : <input type="text" name="password"></p>


    <% if(request.getAttribute("error") != null){
        out.print("<p>Invalid Credentials!!!</p>");
        } %>
        <input class="btn btn-warning" type="submit" value="register"/>
    </form>
    </body>
    </html>


