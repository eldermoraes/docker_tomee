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
</head>
<body>
<center>
	<h1>The request is being answered by:</h1>
	<h2><font color="red">IP: ${data.hostAddress}</font></h2>
	<h2><font color="blue">HostName: ${data.canonicalHostName}</font></h2>
        <h2><font color="green">Session ID: <%=request.getSession().getId() %></font></h2>
        <a href="<%=request.getContextPath()%>/rs/testcontroller"><button>Call Host Tester</button></a>
</center>
</body>
</html>
