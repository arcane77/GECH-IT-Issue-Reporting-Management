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

.container{
    display: flex;  
}

.textc{
    margin: 6rem 0 0 0;
    display: inline-flex;
    justify-content: space-between;
}

 .ptext {
    margin-top: 7rem; 
    margin-left: 9rem;
    font-size: 2.3rem;
    font-weight: bolder;
    color: #37677E;
    min-width: 50vw;
}

.stext{
            color: rgb(255, 123, 0);
            text-align: center;
            font-size: 1.8rem;
            font-weight: 1000;
            display: inline-flex;
            position: absolute;
            height: 10px;
            width: 400px;
            top: 43%;
            left: 22%;
}

.img{
    margin: 0.9rem 0 0 0.6rem;
    display: inline-flex;
}

.img2{
            text-align: center;
            display: inline-flex;
            position: absolute;
            top: 55%;
            left: 28%;
}

.heading{
            display: inline-flex;
            font-weight: bolder;
            font-size: 2.5rem;
            color: rgb(18, 17, 17);
            margin: 1.5rem 1rem;
            word-spacing: 0.2rem;
            letter-spacing: 0.1rem;
        }

</style>

<body>
    <div class="parent">
        <a href="landing.html"><img  class="img" src="vtul.png" width="70px" height="70px" ></a>
        <p class="heading">GECH IT SOLUTION MANAGEMENT</p>
    </div>
    <div class="container">
        <div class="textc">
            <p class="ptext">Your problem has been submitted</p>
            <p class="stext">Solution is on its way</p>
            <img class="img2"  src="Frame 3.png" width="116px" height="107px"/>
            <img src="Frame 2.png" width="553px" height="450px"/>
        </div>
    </div>
</body>
</html>