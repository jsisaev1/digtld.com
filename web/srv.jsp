<%--
  Created by IntelliJ IDEA.
  User: j
  Date: 31.05.2016
  Time: 23:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.digtld.SRV_LookUp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SRV</title>
</head>
<body>
<a href="index.jsp">Return to main page</a>

Enter your domain here:
<form action="" method="GET">
    <input type="text" size="20" name="domain" placeholder="example.com" required>
    <input type="submit" value="SRV">
</form>
<pre>
<%
    String domain = request.getParameter("domain");
    if (domain != null) {
        out.println("<h4>Result:</h4><br>");
        SRV_LookUp output = new SRV_LookUp(domain);
        out.println(output.lookup());
    }
%>
</pre>

</body>
</html>
