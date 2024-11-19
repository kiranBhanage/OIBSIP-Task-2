<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style>
body {
   
    font-family: Arial, sans-serif;
    background-image: url('JWjwHiV.jpg'); 
     background-size: cover;
}
.container {
    display: flex;
    flexx-direction:row;
    justify-content: center;
    align-items: center;
    gap: 30px;
    margin-top: 100px;
    flex-wrap: wrap;
    text-align: center;
    width: 80%;
    margin: 0 auto;
}
.card {
    background-color: #ffffff;
    border-radius: 15px;
    padding: 40px;
    width: 300px; 
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease-in-out;
}
.card:hover {
    transform: translateY(-10px);
}
.card button {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 20px;
    text-align: center;
    text-decoration: none;
    font-size: 18px;
    border-radius: 10px;
    cursor: pointer;
    width: 100%;
    box-sizing: border-box;
    font-weight: bold;
}
.card button:hover {
    background-color: #45a049;
}

.logout {
    background-color: #f44336;
    color: white;
    padding: 18px 32px;
    font-size: 18px;
    border-radius: 10px;
    cursor: pointer;
    display: block;
    margin: 40px auto;
    font-weight: bold;
    transition: background-color 0.3s ease-in-out;
}
.logout:hover {
    background-color: #e53935;
}
html, body {
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 0;
}
h1 {
    font-size: 36px;
    margin-bottom: 40px;
    color: white;
    font-weight: bolder;
}

    </style>
</head><body>
    <div class="container">
        <h1> Reservation</h1>
        <div class="card">
            <button onclick="window.location.href='ReservationForm.jsp'"> Book Ticket</button>
        </div>
        <div class="card">
            <button onclick="window.location.href='Update.jsp'">Update User Info</button>
        </div>
        <div class="card">
            <button onclick="window.location.href='Delete'">Delete Info</button>
        </div>
    </div>
    <button class="logout" onclick="window.location.href='Register.jsp'">LogOut</button>
</body>

</html>
