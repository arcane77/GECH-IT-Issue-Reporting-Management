<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
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
    margin: 0.7rem 0 0 0.6rem;
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
    font-size: 2rem;
    font-weight: 1000;
    position: absolute;
    left: 34%;
    top: 22%;
    color: #0E4A67;
    }

.container {
    display: flex; 
    justify-content: start; 
    align-items: start; 
}


.form-container {
    /* margin-top: 5rem;
    margin-left: 30rem; */
    left: 34%;
    top: 32%;
    position: absolute;
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
            margin-top: 0.5rem;
            padding-top: 0.5rem;
            width: 44vw;
            height: 5vh;
            border-radius: 10px;
            border: none;
            cursor: pointer;
        }

.ftext{
            color: #37677E;
            text-align: center;
            font-size: 1rem;
            font-weight: 1000;
            display: inline-flex;
            position: absolute;
            height: 10px;
            width: 400px;
            top: 97%;
            padding-left: 0.2rem;
            letter-spacing: 1px;
            cursor: pointer;
}


</style>
<body>
	<form action=login method="post">
    <div class="parent">
        <img class="img" src="vtul.png" width="70px" height="70px" >
        <p class="heading">GECH IT SOLUTION MANAGEMENT</p>
    </div>

    <p class="htext">Login</p>
    <div class="container"> 
        <div class="form-container">
            <label for="Email">Email</label>
            <input type="text" id="email" name="email" required>

             <label for="Password">Password</label>
             <input type="text" id="pswd" name="pswd" required>
        
             <button class="btn" type="submit">login</button>
        </div>

    </div>
    </form>
</body>
</html>
