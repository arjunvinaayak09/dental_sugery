<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product Management 2026</title>

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

    background:linear-gradient(135deg,#0f172a,#1e3a8a,#1d4ed8,#2563eb);
    background-size:300% 300%;
    animation:bgMove 12s ease infinite;
    position:relative;
}

@keyframes bgMove{
    0%{background-position:0% 50%;}
    50%{background-position:100% 50%;}
    100%{background-position:0% 50%;}
}

/* Floating circles */

.circle{
    position:absolute;
    border-radius:50%;
    filter:blur(90px);
    opacity:.25;
}

.c1{
    width:260px;
    height:260px;
    background:#60a5fa;
    top:5%;
    left:8%;
}

.c2{
    width:220px;
    height:220px;
    background:#2563eb;
    bottom:8%;
    right:10%;
}

.c3{
    width:180px;
    height:180px;
    background:#38bdf8;
    top:50%;
    left:60%;
}

/* Glass Card */

.glass-card{

    width:760px;
    max-width:92%;

    padding:60px;

    border-radius:25px;

    background:rgba(255,255,255,.08);

    border:1px solid rgba(255,255,255,.15);

    backdrop-filter:blur(20px);
    -webkit-backdrop-filter:blur(20px);

    box-shadow:
    0 20px 50px rgba(0,0,0,.35);

    text-align:center;

    position:relative;

    overflow:hidden;
}

.glass-card::before{

    content:'';

    position:absolute;

    width:200px;
    height:180%;

    background:rgba(255,255,255,.08);

    transform:rotate(30deg);

    left:-150px;
    top:-50px;

    transition:1.2s;
}

.glass-card:hover::before{
    left:900px;
}

/* Logo */

.logo{

    width:90px;
    height:90px;

    margin:auto;
    margin-bottom:25px;

    border-radius:50%;

    background:rgba(255,255,255,.12);

    display:flex;
    justify-content:center;
    align-items:center;

    font-size:42px;

    color:white;
}

/* Heading */

h1{

    color:white;

    font-size:42px;

    font-weight:700;

    margin-bottom:18px;
}

p{

    color:#dbeafe;

    font-size:18px;

    line-height:1.8;

    margin-bottom:40px;
}

/* Button */

.btn{

    display:inline-block;

    padding:16px 40px;

    text-decoration:none;

    border-radius:50px;

    background:#2563eb;

    color:white;

    font-size:17px;

    font-weight:600;

    transition:.35s;

    box-shadow:0 12px 30px rgba(37,99,235,.35);
}

.btn:hover{

    background:#1d4ed8;

    transform:translateY(-4px);

    box-shadow:0 20px 35px rgba(37,99,235,.45);
}

/* Features */

.features{

    margin-top:45px;

    display:flex;

    justify-content:center;

    gap:20px;

    flex-wrap:wrap;
}

.feature{

    width:180px;

    background:rgba(255,255,255,.08);

    border:1px solid rgba(255,255,255,.12);

    border-radius:18px;

    padding:22px;

    transition:.35s;
}

.feature:hover{

    transform:translateY(-8px);

    background:rgba(255,255,255,.14);
}

.feature h3{

    color:white;

    margin-bottom:10px;

    font-size:18px;
}

.feature p{

    color:#cbd5e1;

    font-size:13px;

    margin:0;

    line-height:1.6;
}

@media(max-width:768px){

    .glass-card{
        padding:40px 25px;
    }

    h1{
        font-size:32px;
    }

    p{
        font-size:16px;
    }

    .features{
        flex-direction:column;
        align-items:center;
    }

}

</style>

</head>

<body>

<div class="circle c1"></div>
<div class="circle c2"></div>
<div class="circle c3"></div>

<div class="glass-card">

    

    <h1>Product Management</h1>

    <p>
        Manage your products with a secure, efficient, and professional dashboard.
        Track inventory, organize product information, and streamline your business
        operations through a modern management system.
    </p>

    <a href="product?action=list" class="btn">
        View Products
    </a>

    <div class="features">

        <div class="feature">
            <h3>Inventory</h3>
            <p>Monitor stock levels with real-time updates.</p>
        </div>

        <div class="feature">
            <h3>Security</h3>
            <p>Protect your business data with secure management.</p>
        </div>

        <div class="feature">
            <h3>Performance</h3>
            <p>Fast and reliable dashboard for daily operations.</p>
        </div>

    </div>

</div>

</body>
</html>
