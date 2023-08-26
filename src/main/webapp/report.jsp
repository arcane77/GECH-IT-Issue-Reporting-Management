<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>report issue</title>
</head>

<style>
@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@200;400&display=swap');
    
body {
    font-family: 'Montserrat', sans-serif;
    background-color: #f5f5f5;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    padding: 0;
}

.parent{
    display: flex;
}

.img{
    margin: 0.6rem 0 0 0.6rem;
    display: inline-flex;
}

.heading{
            display: inline-flex;
            font-weight: 1000;
            font-style: bold;
            font-size: 2.5rem;
            color: rgb(18, 17, 17);
            margin: 1.2rem 1rem;
            word-spacing: 0.2rem;
            letter-spacing: 0.1rem;
        }

.htext {
    font-size: 1.8rem;
    font-weight: bolder;
    margin-left: 8rem;
    color: #0E4A67;
    }

.container {
    display: flex; 
    justify-content: start; 
    align-items: start; 
}

.priority-container {
   margin: 6.5rem 0 0 3rem;
}

.priority-container input {
    height: 45px;
    padding: 15px;
}

.form-container {
    margin-left: 25rem;
    padding-top: 10px;
    display: inline-flex;
    flex-wrap: wrap;
    flex-direction: row;
    width: 80%;
    max-width: 500px;
}


h1 {
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 5px;
    font-size: 16px;
    color: #37677E;
}

input, textarea {
    box-sizing: border-box;
    width: 100%;
    font-size: 18px;
    padding: 15px;
    margin-bottom: 20px;
    border: 1.8px solid #5D5FEF;
    border-radius: 10px;
    color: #37677E;
}

.btn{
            display: inline-flex;
            flex-wrap: wrap;
            justify-content: center;
            color: #fff;
            font-family: 'Montserrat', sans-serif;
            font-size: 1.2rem;
            background-image: linear-gradient(to right, #EE5757, #FE904B);
            margin: 1rem 0.5rem 0 0.5rem;
            padding-top: 0.5rem;
            width: 35vw;
            height: 5vh;
            border-radius: 10px;
            border: none;
            cursor: pointer;
        }


</style>
<body>
<form action=report method ="post">
    <div class="parent">
       <img class="img" src="vtul.png" width="70px" height="70px" >
        <p class="heading">GECH IT SOLUTION MANAGEMENT</p>
    </div>

    <p class="htext">Report Your Problem</p>
    <div class="container"> 
        <div class="form-container">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>

             <label for="dept">Department</label>
             <input type="text" id="dept" name="dept" required>

            <label for="Rno">Room No</label>
            <input type="number" id="Rno" name="Rno" required>
        
             <label for="description">Description</label>
            <textarea id="description" name="description" rows="7" cols="40" required></textarea>
        
            <a href="success.jsp" class="link"> <button class="btn" type="submit">Submit</button></a>
        </div>
        <div class="priority-container">
            <label for="prior">Priority</label>
            <input type="text" id="prior" name="prior" required>
        </div>
    </div>
    </form>
</body>
</html>
    