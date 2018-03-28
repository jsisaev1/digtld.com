<%--
  Created by IntelliJ IDEA.
  User: j
  Date: 31.05.2016
  Time: 2:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.digtld.TXT_LookUp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TXT</title>
</head>
<body>
<a href="index_old.jsp">Return to main page</a>

Enter your domain here:
<form action="" method="GET">
    <input type="text" size="20" name="domain" placeholder="example.com" required>
    <input type="submit" value="TXT">
</form>
<pre>
<%
    String domain = request.getParameter("domain");
    if (domain != null) {
        out.println("<h4>Result:</h4><br>");
        TXT_LookUp output = new TXT_LookUp(domain);
        out.println(output.lookup());
    }
%>
</pre>
</body>
</html>
