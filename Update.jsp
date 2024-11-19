<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Details</title>
</head>
<style>
body {
    background-image: url('JWjwHiV.jpg');
    background-size: cover;
      color: #333;
    display: flex;
   align-items: center;
       justify-content: flex-end;
    flex-direction:column;
}
div {
    padding: 40px;
       border-radius: 10px;
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0. 3);
    text-align: center;
   margin-left:500px;
}
h2{
color: white;
font-weight: bold;

}
label{
color: white;

}
form{
margin-left: 1000px;
height:600px;
width:500px
}
form input[type="text"],
form input[type="email"],
form input[type="password"],
form input[type="tel"] {
    width:460px;
    padding: 12px 15px;
    margin-top: 5px;
     border: 1px solid #ccc;
    border-radius: 8px;
        font-size: 16px;
    color: #333;
    background-color: #f9f9f9;
}

form input[type="text"]:focus,
form input[type="email"]:focus,
form input[type="password"]:focus,
form input[type="tel"]:focus {
    border-color: #5b9bd5;
    box-shadow: 0 0 8px rgba(91, 155, 213, 0.2);
    outline: none;
}

input::placeholder {
    color: black;
    
}

form input[type="submit"] {
    padding: 12px;
      margin-top: 25px;
    border: none;
   border-radius: 8px;
    background-color: #5b9bd5;
    color: white;
       font-size: 18px;
    font-weight: bold;
    cursor: pointer;
  transition: background-color 0.3s ease, transform 0.2s ease;
    box-shadow: 0 6px 12px rgba(91, 155, 213, 0.3);
}

form input[type="submit"]:hover {
    background-color: #4a90e2;
    transform: translateY(-2px);
}

form a {
    display: inline-block;
    color: #5b9bd5;
    margin-top: 15px;
    font-size: 14px;
    text-decoration: none;
    transition: color 0.3s ease;
}

form a:hover {
    color: #4a90e2;
}

form hr {
    margin: 25px 0;
    border: 0;
    height: 1px;


</style>
<body>
    <h2>User Details</h2>



    <form action="update" method="post" >
        <label>Name:</label>
          <input type="text" name="name" value="${name}" required><br><br>

       <label>Email:</label>
        <input type="email" name="email" value="${email}" readonly><br><br>

       <label>Password:</label>
        <input type="password" name="password" value="${password}" required><br><br>

       <label>Standard:</label>
        <input type="text" name="standard" value="${standard}" required><br><br>

    <label>Phone:</label>
        <input type="text" name="phone" value="${phone}" required><br><br>

        <input type="submit" value="Update">
    </form>
</body>
</html>
