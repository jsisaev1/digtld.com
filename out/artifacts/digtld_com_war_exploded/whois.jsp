<%--
  Created by IntelliJ IDEA.
  User: j
  Date: 17.05.2016
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.digtld.WHOIS_LookUP" %>
<%@ page import="de.malkusch.whoisApi.RecoverableWhoisApiException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>WHOIS</title>
</head>
<body>
<a href="index_old.jsp">Return to main page</a>

Enter your domain here:
<form action="" method="GET">
    <input type="text" size="20" name="domain" placeholder="example.com" required>
    <input type="submit" value="WHOIS">
</form>
<pre>
<%
    String domain = request.getParameter("domain");
    if (domain != null) {
        out.println("<h4>Result:</h4><br>");
        WHOIS_LookUP output = new WHOIS_LookUP(domain);
        try {
            out.println(output.lookup());
        } catch (RecoverableWhoisApiException e) {
            e.printStackTrace();
        }
    }
%>
</pre>
</body>
</html>
