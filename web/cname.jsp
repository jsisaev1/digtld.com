<%--
  Created by IntelliJ IDEA.
  User: j
  Date: 28.05.2016
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.digtld.CNAME_LookUp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CNAME Record</title>
</head>
<body>
<a href="index.jsp">Return to main page</a>

Enter your domain here:
<form action="" method="GET">
    <input type="text" size="20" name="domain" placeholder="example.com" required>
    <input type="submit" value="CNAME">
</form>
<pre>
<%
    String domain = request.getParameter("domain");
    if (domain != null) {
        out.println("<h4>Result:</h4><br>");
        CNAME_LookUp output = new CNAME_LookUp(domain);
        out.println(output.lookup());
    }
%>
</pre>
</body>
</html>
