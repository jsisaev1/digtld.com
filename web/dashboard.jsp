<%--
  Created by IntelliJ IDEA.
  User: j
  Date: 08.06.2016
  Time: 8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.digtld.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
Enter your domain here:
<form action="" method="GET">
    <input type="text" size="20" name="domain" placeholder="example.com" required>
    <input type="submit" value="IPv6">
</form>
<pre>
        <%
    String domain = request.getParameter("domain");
    if (domain != null) {
        out.println("<h4>Result:</h4><br>");
        IPv6_Lookup output = new IPv6_Lookup(domain);
        out.println(output.lookup());
    }
%>
    <%
    String domain = request.getParameter("domain");
    if (domain != null) {
        out.println("<h4>Result:</h4><br>");
        CNAME_LookUp output = new CNAME_LookUp(domain);
        out.println(output.lookup());
    }
%>

</body>
</html>
