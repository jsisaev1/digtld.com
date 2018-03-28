<%--
  Created by IntelliJ IDEA.
  User: j
  Date: 17.05.2016
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.digtld.AAAA_Lookup" %>
<%@ page import="org.xbill.DNS.A6Record" %>
<%@ page import="com.digtld.IPv6_Lookup" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>IPv6</title>
</head>
<body>
<a href="index_old.jsp">Return to main page</a>

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
</pre>
</body>
</html>
