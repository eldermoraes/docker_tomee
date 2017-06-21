<%-- 
    Document   : index
    Created on : Jun 20, 2017, 3:53:55 PM
    Author     : eldermoraes
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cluster Test</title>
        <style>
            .myButton {
                -moz-box-shadow: 0px 0px 0px 2px #9fb4f2;
                -webkit-box-shadow: 0px 0px 0px 2px #9fb4f2;
                box-shadow: 0px 0px 0px 2px #9fb4f2;
                background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #7892c2), color-stop(1, #476e9e));
                background:-moz-linear-gradient(top, #7892c2 5%, #476e9e 100%);
                background:-webkit-linear-gradient(top, #7892c2 5%, #476e9e 100%);
                background:-o-linear-gradient(top, #7892c2 5%, #476e9e 100%);
                background:-ms-linear-gradient(top, #7892c2 5%, #476e9e 100%);
                background:linear-gradient(to bottom, #7892c2 5%, #476e9e 100%);
                filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#7892c2', endColorstr='#476e9e',GradientType=0);
                background-color:#7892c2;
                -moz-border-radius:10px;
                -webkit-border-radius:10px;
                border-radius:10px;
                border:1px solid #4e6096;
                display:inline-block;
                cursor:pointer;
                color:#ffffff;
                font-family:Arial;
                font-size:19px;
                padding:12px 37px;
                text-decoration:none;
                text-shadow:0px 1px 0px #283966;
            }
            .myButton:hover {
                background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #476e9e), color-stop(1, #7892c2));
                background:-moz-linear-gradient(top, #476e9e 5%, #7892c2 100%);
                background:-webkit-linear-gradient(top, #476e9e 5%, #7892c2 100%);
                background:-o-linear-gradient(top, #476e9e 5%, #7892c2 100%);
                background:-ms-linear-gradient(top, #476e9e 5%, #7892c2 100%);
                background:linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
                filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#476e9e', endColorstr='#7892c2',GradientType=0);
                background-color:#476e9e;
            }
            .myButton:active {
                position:relative;
                top:1px;
            }
        </style>    
    </head>
    <body>
        <center>
            <h1>The request is being answered by:</h1>
            <h2><font color="red">IP: ${data.hostAddress}</font></h2>
            <h2><font color="blue">HostName: ${data.canonicalHostName}</font></h2>
            <h2><font color="green">Session ID: <%=request.getSession().getId()%></font></h2>
            <a href="<%=request.getContextPath()%>/rs/testcontroller/testdata"><button class="myButton" style="width: 400px;">Reload Tester</button></a>
        </center>
    </body>
</html>
