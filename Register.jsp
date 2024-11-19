<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<style type="text/css">
body{
background-image: url('JWjwHiV.jpg'); background-size: cover; 
}
div {
    width: 400px;
    margin: 50px auto;
    padding: 20px;
    background: transparent;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.5);
    border-radius: 15px;
    color: white;
    text-align: center;
}
div h2 {
    font-size: 28px;
    margin-bottom: 10px;
    color: #fff;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
}

div h4 {
    font-size: 18px;
    margin-bottom: 20px;
    color: #ffefba;
}
div input[type="text"],
div input[type="email"],
div input[type="tel"],
div input[type="password"] {
    width: calc(100% - 20px);
    margin: 10px auto;
    padding: 15px;
    border: 1px solid white;
    border-radius: 8px;
    font-size: 16px;
    color: #fff;
    background-color: transparent;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);  
}
input::placeholder {
    color: #ffffff; 
    opacity: 1; 
}
div input[type="submit"] {
    width: 30%;
    padding: 15px;
     background-color:transparent;
    border-radius: 8px;
    border:1px solid white;
    font-size: 18px;
    font-weight: bolder;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.2s ease;
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
}
div input[type="submit"]:hover {
    background-color: white;
    transform: scale(1.05);
}
div a {
    display: inline-block;
    color: #ffefba;
    margin-top: 10px;
    font-size: 20px;
    font-weight: bold;
    transition: color 0.3s ease;
}
div a:hover {
    color: #f9d423;
}
div hr {
    margin: 20px 0;
    border: 0;
    height: 1px;
    background: #ffefba;
}
}	
</style>
</head>
<body>
		<div>
			<form action="Register" method="post">
				<h2>Student Registration</h2>
				<h4>${msg}</h4>
				<input type="text" name="sname" id="name" placeholder="Enter Your Name" required >
				<input type="email" name="semail" id="email" placeholder="Enter Your Email" required>
				<input type="tel" name="sphone" id="phone" placeholder="Enter Your Mobile No" required>
				<input type="text" name="sage" id="age" placeholder="Enter Your age" required>
				<input type="password" name="spass" id="pass" placeholder="Enter Your Password" required>
				<input type="submit"><br><hr>
				<a href="./Login.jsp">Login Now</a>
			</form>
		</div>
</body>
</html>
