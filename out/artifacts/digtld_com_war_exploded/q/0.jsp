<%--
  Created by IntelliJ IDEA.
  User: Evgeny
  Date: 08.06.2016
  Time: 22:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/plain;charset=UTF-8" language="java" %>
<%@ page import="com.digtld.*" %>
<%
    String ipv4 = request.getParameter("domain");
    if (ipv4 != null) {
        A_LookUp output = new A_LookUp(ipv4);
        out.println(output.lookup());
    }
%>
