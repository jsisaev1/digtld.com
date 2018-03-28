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
    String ipv66 = request.getParameter("domain");
    if (ipv66 != null) {
        AAAA_Lookup output = new AAAA_Lookup(ipv66);
        out.println(output.lookup());
    }
%>
