<%--
  Created by IntelliJ IDEA.
  User: j
  Date: 17.05.2016
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.digtld.PTR_Record_Lookup" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PTR</title>
</head>
<body>
<a href="index.jsp">Return to main page</a>

Enter your domain here:
<form action="" method="GET">
    <input type="text" size="20" name="domain" placeholder="example.com" required>
    <input type="submit" value="PTR">
</form>
<pre>
<%
    String domain = request.getParameter("domain");
    if (domain != null) {
        out.println("<h4>Result:</h4><br>");
        PTR_Record_Lookup output = new PTR_Record_Lookup(domain);
        out.println(output.lookup());
    }
%>
</pre>
</body>
</html>
