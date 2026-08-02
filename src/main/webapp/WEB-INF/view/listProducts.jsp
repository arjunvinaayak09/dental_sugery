<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    padding:40px;
    overflow-x:hidden;

    background:linear-gradient(-45deg,#4facfe,#00f2fe,#7b2ff7,#ff4b9f);
    background-size:400% 400%;
    animation:gradientBG 12s ease infinite;
}

@keyframes gradientBG{
    0%{background-position:0% 50%;}
    50%{background-position:100% 50%;}
    100%{background-position:0% 50%;}
}

/* Background Blur Circles */

.circle{
    position:fixed;
    border-radius:50%;
    filter:blur(90px);
    opacity:.45;
    z-index:-1;
}

.c1{
    width:280px;
    height:280px;
    background:#ffffff;
    top:5%;
    left:5%;
}

.c2{
    width:220px;
    height:220px;
    background:#00d2ff;
    bottom:5%;
    right:5%;
}

.c3{
    width:180px;
    height:180px;
    background:#ff4b9f;
    top:50%;
    left:60%;
}

/* Glass Container */

.container{

    width:100%;
    max-width:1100px;

    background:rgba(255,255,255,.12);

    backdrop-filter:blur(20px);
    -webkit-backdrop-filter:blur(20px);

    border:1px solid rgba(255,255,255,.25);

    border-radius:25px;

    padding:35px;

    box-shadow:
    0 20px 45px rgba(0,0,0,.25);

}

/* Heading */

h1{
    text-align:center;
    color:#fff;
    font-size:38px;
    margin-bottom:30px;
}

/* Table */

table{

    width:100%;
    border-collapse:separate;
    border-spacing:0;

    overflow:hidden;

    border-radius:18px;

    border:2px solid rgba(255,255,255,.8);

    box-shadow:
        0 0 20px rgba(255,255,255,.25),
        0 15px 35px rgba(0,0,0,.2);
}

thead{

    background:rgba(255,255,255,.22);
}

thead th{

    color:white;
    padding:18px;

    font-weight:600;

    border-right:1px solid rgba(255,255,255,.35);
    border-bottom:2px solid rgba(255,255,255,.5);
}

thead th:last-child{

    border-right:none;
}

tbody tr{

    background:rgba(255,255,255,.08);

    transition:.35s;
}

tbody tr:nth-child(even){

    background:rgba(255,255,255,.14);
}

tbody tr:hover{

    background:rgba(255,255,255,.24);
    transform:scale(1.01);
}

tbody td{

    color:white;

    padding:16px;

    border-right:1px solid rgba(255,255,255,.25);
    border-bottom:1px solid rgba(255,255,255,.25);
}

tbody td:last-child{

    border-right:none;
}

tbody tr:last-child td{

    border-bottom:none;
}

.price{

    text-align:right;
    font-weight:600;
}

/* Button */

.actions{

    text-align:center;
    margin-top:35px;
}

.btn{

    display:inline-block;

    padding:15px 40px;

    color:white;

    text-decoration:none;

    font-weight:600;

    border-radius:50px;

    background:rgba(255,255,255,.18);

    border:1px solid rgba(255,255,255,.35);

    backdrop-filter:blur(10px);

    transition:.35s;

    box-shadow:0 10px 25px rgba(0,0,0,.25);
}

.btn:hover{

    background:white;
    color:#333;

    transform:translateY(-5px);

    box-shadow:0 15px 30px rgba(0,0,0,.3);
}

/* Responsive */

@media(max-width:768px){

.container{
    padding:20px;
}

table{
    display:block;
    overflow-x:auto;
    white-space:nowrap;
}

h1{
    font-size:30px;
}

}

</style>

</head>

<body>

<div class="circle c1"></div>
<div class="circle c2"></div>
<div class="circle c3"></div>

<div class="container">

<h1>Product List</h1>

<table>

<thead>

<tr>

<th>ID</th>
<th>Product Name</th>
<th>Price</th>
<th>Description</th>

</tr>

</thead>

<tbody>

<c:forEach var="product" items="${products}">

<tr>

<td>${product.productId}</td>

<td>${product.name}</td>

<td class="price">$${product.price}</td>

<td>${product.description}</td>

</tr>

</c:forEach>

</tbody>

</table>

<div class="actions">

<a href="product?action=add" class="btn">
Add New Product
</a>

</div>

</div>

</body>
</html>
