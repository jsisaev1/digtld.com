<%--
  Created by IntelliJ IDEA.
  User: j
  Date: 31.05.2016
  Time: 23:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.digtld.SOA_LookUp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SOA</title>
</head>
<body>

Enter your domain here:
<form action="" method="GET">
    <input type="text" size="20" name="domain" placeholder="example.com" required>
    <input type="submit" value="AAAA">
</form>
<pre>
<%
    String domain = request.getParameter("domain");
    if (domain != null) {
        out.println("<h4>Result:</h4><br>");
        SOA_LookUp output = new SOA_LookUp(domain);
        out.println(output.lookup());
    }
%>
</pre>

</body>
</html>
