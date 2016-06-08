<%--
  Created by IntelliJ IDEA.
  User: j
  Date: 31.05.2016
  Time: 3:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.digtld.BlackListCheck" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DNSBL</title>
</head>
<body>
<a href="index.jsp">Return to main page</a>

Enter your domain here:
<form action="" method="GET">
    <input type="text" size="20" name="domain" placeholder="example.com" required>
    <input type="submit" value="DNSBL">
</form>
<pre>
        <%
    String ipAddress = request.getParameter("domain");
    if (ipAddress != null) {
        out.println("<h4>Result:</h4><br>");
        BlackListCheck output = new BlackListCheck(ipAddress);
        out.println(output.lookup());
    }
%>
</body>
</html>
