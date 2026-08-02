<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>

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
    overflow:hidden;

    background:linear-gradient(-45deg,#4facfe,#00f2fe,#7b2ff7,#ff4b9f);
    background-size:400% 400%;
    animation:gradientBG 12s ease infinite;
}

@keyframes gradientBG{

0%{background-position:0% 50%;}
50%{background-position:100% 50%;}
100%{background-position:0% 50%;}

}

/* Background Blur */

.circle{
    position:absolute;
    border-radius:50%;
    filter:blur(90px);
    opacity:.45;
}

.c1{
    width:280px;
    height:280px;
    background:white;
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

/* Glass Form */

.container{

    width:450px;
    max-width:90%;

    background:rgba(255,255,255,.12);

    backdrop-filter:blur(20px);
    -webkit-backdrop-filter:blur(20px);

    border:1px solid rgba(255,255,255,.3);

    border-radius:25px;

    padding:40px;

    box-shadow:
        0 20px 40px rgba(0,0,0,.25);
}

h1{

    text-align:center;
    color:white;
    margin-bottom:30px;
    font-size:34px;
}

/* Labels */

label{

    color:white;
    display:block;
    margin-bottom:8px;
    font-weight:500;
}

/* Inputs */

input{

    width:100%;

    padding:14px 18px;

    border-radius:12px;

    border:1px solid rgba(255,255,255,.3);

    background:rgba(255,255,255,.15);

    color:white;

    font-size:15px;

    outline:none;

    margin-bottom:20px;

    transition:.3s;
}

input::placeholder{

    color:rgba(255,255,255,.6);
}

input:focus{

    border-color:white;

    background:rgba(255,255,255,.22);

    box-shadow:0 0 15px rgba(255,255,255,.35);
}

/* Button */

button{

    width:100%;

    padding:15px;

    border:none;

    border-radius:50px;

    background:rgba(255,255,255,.18);

    color:white;

    font-size:17px;

    font-weight:600;

    cursor:pointer;

    backdrop-filter:blur(10px);

    border:1px solid rgba(255,255,255,.35);

    transition:.35s;
}

button:hover{

    background:white;

    color:#333;

    transform:translateY(-4px);

    box-shadow:0 12px 25px rgba(0,0,0,.25);
}

/* Back Button */

.back{

    display:block;

    text-align:center;

    margin-top:18px;

    text-decoration:none;

    color:white;

    font-weight:500;

    transition:.3s;
}

.back:hover{

    color:#ffe082;
}

</style>

</head>

<body>

<div class="circle c1"></div>
<div class="circle c2"></div>
<div class="circle c3"></div>

<div class="container">

<h1>Add Product</h1>

<form action="product?action=add" method="post">

<label>Name</label>
<input
type="text"
name="name"
placeholder="Enter product name"
required>

<label>Price</label>
<input
type="number"
step="0.01"
name="price"
placeholder="Enter product price"
required>

<label>Description</label>
<input
type="text"
name="description"
placeholder="Enter product description"
required>

<button type="submit">
Add Product
</button>

</form>

<a href="product?action=list" class="back">
Back to Product List
</a>

</div>

</body>
</html>
