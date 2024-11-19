<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Reservation System</title>
 <style>
    body {
    font-family: Arial, sans-serif;
    background-image: url('Cartoon-Cute-Train-Theme-Backdrop-for-Photography-Kids-Train-Birthday-Party-Photo-Background-Children-Theme-Birthday.avif');
     background-size: cover; width: 98vw; height: 88vh;
    margin: 0;
    padding: 0;
}

.form-container {
   background:transparant;
    height: 670px;
    max-width: 500px;
    margin: 50px auto;
    
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
    color: #333333;
    
    
}

label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}

input, select {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    width: 100%;
    padding: 10px;
    background-color:red;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

button:hover {
    background-color: #45a049;
}
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Train Reservation Form</h1>
        <form method="post" action="ReservationServlet">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br><br>
            
            <label for="age">Age:</label>
            <input type="number" id="age" name="age" required><br><br>
            
            <label for="train">Train Number and Name:</label>
            <select id="train" name="train" required>
                <option value="101|Rajdhani Express">101 - Rajdhani Express</option>
                <option value="102|Shatabdi Express">102 - Shatabdi Express</option>
                <option value="103|Duronto Express">103 - Duronto Express</option>
                <option value="104|Agartala Deoghar Weekly Express">104 - Agartala Deoghar Weekly Express</option>
                <option value="105|Agra Fort Etah Express Special">105 - Agra Fort Etah Express Special</option>
                <option value="106|Kolkata Gwalior Super Fast Express">106 - Kolkata Gwalior Super Fast Express</option>
                <option value="107|Koyna Express">107 - Koyna Express</option>
            </select><br><br>
            
            <label for="class">Class Type:</label>
            <select id="class" name="class" required>
                <option value="First Class">First Class</option>
                <option value="Second Class">Second Class</option>
                <option value="third Class">third Class</option>
                <option value="Sleeper Class">Sleeper Class</option>
            </select><br><br>
            
            <label for="date">Date of Journey:</label>
            <input type="date" id="date" name="date" required><br><br>
            
            <label for="from">From:</label>
            <input type="text" id="from" name="from" required><br><br>
            
            <label for="to">To:</label>
            <input type="text" id="to" name="to" required><br><br>
            
            <button type="submit">Insert</button>
        </form>
    </div>
</body>
</html>
