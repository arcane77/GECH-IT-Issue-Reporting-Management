<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>landing page</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

    </head>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@200;400&display=swap');

        body{
            background-color: #f5f5f5;
            font-family: 'Montserrat', sans-serif;
        }
        .parent{
        display:flex;}

        .heading{
        display: inline-flex;
            font-weight: 1000;
            font-style: bold;
            font-size: 2.5rem;
            color: rgb(18, 17, 17);
            margin-top: 0.5rem;
            margin-left: 0.5rem;
            word-spacing: 0.2rem;
            letter-spacing: 0.1rem;
        }

        .card1{
            height: 15%;
            width: 50%;
            color: transparent;
            border: solid rgb(18, 17, 17) 0.1rem;
            border-radius: 1rem;
            margin: 0;
            position: absolute;
            top: 40%;
            left: 50%;
            transform: translate(-50%, -50%);
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            cursor: pointer;
        }

        .htext{
            color:rgb(18, 17, 17);
            left: 55%;
            top: 5%;
            height: 10px;
        }

        .text{
            color:rgb(18, 17, 17);
            text-align: center;
            display: inline-flex;
            position: absolute;
            height: 10px;
             width: 400px;
             top: 40%;
             left: 35%;
             
        }

        .img{
            top: 25%;
            display: inline-flex;
            position: absolute;
            left: 90%;
        
        }


        .btn1{
            display: inline-flex;
            flex-wrap: wrap;
            justify-content: center;
            color: #fff;
            font-family: 'Montserrat', sans-serif;
            font-size: 1.2rem;
            background-image: linear-gradient(to right, #EE5757, #FE904B);
            margin-left: 2rem;
            margin-top: 10rem;
            padding-top: 1rem;
            width: 30vw;
            height: 7vh;
            border-radius: 10px;
            border: none;
            cursor: pointer;
        }

       
        .link{
           text-decoration: none;
        }

@media (max-width: 768px) {
    .heading {
        font-size: 1.8rem;
        text-align: center;
        margin-top: 2rem;
        margin-left: 0;
        word-spacing: 0.2rem;
    }
    .parent{
    display: flex;
}

    .card1 {
        width: 85vw;
        height: 15vh;
        top: 60%;
        left: 50%;
        transform: translateY(-50%) translateX(-50%);
    }

    .htext {
        font-size: 1.3rem;
        left: 65%;
       
    }

    .text {
        font-size: 1rem;
        top: 35%;
        left: 25%;
        
    }

    .img {
        top: 30%;
        left: 90%;
        transform: translateX(-50%);
    }

.img1{
    margin: 0.9rem 0 0 0.6rem;
    display: inline-flex;
}
    .btn1 {
        width: 80%;
        margin: 20rem 4rem 0 4rem;
    }

}


    </style>

    <body>
     <div class="parent">
            <img class="img1" src="vtul.png" width="70px" height="70px" >
    
        <p class="heading">GECH IT SOLUTION MANAGEMENT</p>
        <div class="card1">
            <a href="report.jsp" class="link"><h2 class="htext" > I want to report a problem </h2></a> 
            <div>
               <a href="report.jsp" class="link"><p class="text" >click here to report your IT issue</p><img class="img" src="tick.png"/></a> 
            </div>
            <form action=report method=GET>
                  <a href="reported.jsp">  <button class="btn1" type="submit">Reported Issues </button></a>
            </form>
        </div>
        </div>
    </body>
</html>
    