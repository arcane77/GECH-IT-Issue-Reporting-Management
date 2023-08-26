<%@ page import = "java.util.List,java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>reported</title>
</head>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@200;400&display=swap');
body {
    display: flex;
    flex-direction: column;
    height: 100vh;
    background-color: #f5f5f5;
    margin: 0;
    padding: 0;
    font-family: 'Montserrat', sans-serif;
}
.issue-table {
    width: 100%;
    border-collapse: separate;
    border-spacing: 0; 
    overflow: hidden;
      
}

.issue-table th, .issue-table td {
    border: 2px solid black;
    padding: 8px 12px;
    text-align: left;
}

.issue-table th {
    background-color: #f2f2f2;
}

.issue-table th:first-child {
    border-top-left-radius: 10px;
}
.issue-table th:last-child {
    border-top-right-radius: 10px;
}

.issue-table tr:last-child td:first-child {
    border-bottom-left-radius: 10px;
}

.issue-table tr:last-child td:last-child {
    border-bottom-right-radius: 10px;
}

.sidebar{
    width: 25%;
    height: 100vh;
    background-color: #c4c3c3ac;
    border-top-right-radius: 25px 25px;
    display: flex;
}

.heading{
            display: inline-flex;
            font-weight: bolder;
            font-size: 2.5rem;
            max-width: 5vh;
            color: rgb(18, 17, 17);
            margin-left: 0.7rem;
            word-spacing: 0.2rem;
            letter-spacing: 0.1rem;
        }

.stext{
    top: 10%; 
    font-size: 2.1rem;
    font-weight: bolder;
    color: #37677E;
    min-width: 30vw;
    left: 38%;
    position: absolute;
    transform: translate(-50%, -50%);
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
}

.container{
    max-width: 700px;
    max-height:700px;
    background-color:transparent;
    top: 23%;
    left: 27%;
    padding: 20px;
    margin-left: 4rem;
    width: 100%;
    display: flex;
    flex-direction: column;
    /* justify-content: space-between; */
    height: 60%;
    position: absolute;
}

.list{
           height: 10%;
            width: 120%;
            color: transparent;
            border: solid rgb(60, 58, 58) 0.1rem;
            border-radius: 1rem;
            margin-left: 24rem;
            margin-bottom: 20px;
            transform: translate(-50%, -50%);
            display: inline-flex;
            justify-content: flex-start; 
            padding-left: 15px;
}

.text{
    color: rgb(60, 58, 58) ;
    font-size: 20px;
    align-items: center;
    display: flex;
    padding: 0 10px 0 10px;
}

.space{
    margin-left: 35px;
}

.space1{
    margin-left: 80px;
}

.back{
    padding:10px 0 10px 25px;
    background-color: #FE904B;
    border-top-right-radius: 20px 20px;
    border-bottom-right-radius: 20px 20px;
    position: absolute;
    display: inline-flex;
    border: none;
    top: 35%;
    -webkit-box-shadow: 4px 4px 5px 0px rgba(0,0,0,0.39);
-moz-box-shadow: 4px 4px 5px 0px rgba(0,0,0,0.39);
box-shadow: 4px 4px 5px 0px rgba(0,0,0,0.39);
}

.bspace{
    margin-right: 56px;
    margin-left: 10px;
    font-weight: 800;
    padding-right: 58px;
}

.bspace1{
    margin-right: 15px;
    font-weight: 200;
}

.back1{
    padding:10px 0 10px 25px;
    background-color: transparent;
    border-top-right-radius: 20px 20px;
    border-bottom-right-radius: 20px 20px;
    position: absolute;
    display: inline-flex;
    border: none;
    top: 40%;
}

</style>
<head>
    <title>Reports</title>
</head>
<body>
    
    <div class="sidebar">
        <p class="heading">GECH IT SOLUTION MANAGEMENT</p>
        <button class="back"><img src="Frame 4.png"/><span class="bspace">Inbox</span><span class="bspace1"><%= request.getAttribute("inboxCount") %></span></button>
       </div>


    <h1 class="stext">Reported Issues</h1>

    <div class="container">
    

    
    <table class="issue-table">
        <tr>
            <th>Name</th>
            <th>Department</th>
            <th>Priority</th>
            <th>Room No</th>
            <th>Description</th>
        </tr>
        <% 
            List<Map<String, Object>> reports = (List<Map<String, Object>>) request.getAttribute("reports");
            for (Map<String, Object> report : reports) {
        %>
        <tr>
            <td><%= report.get("Name") %></td>
            <td><%= report.get("Department") %></td>
            <td><%= report.get("Priority") %></td>
            <td><%= report.get("Room_No") %></td>
            <td><%= report.get("Description") %></td>
        </tr>
        <% } %>
    </table>
    </div>
</body>
