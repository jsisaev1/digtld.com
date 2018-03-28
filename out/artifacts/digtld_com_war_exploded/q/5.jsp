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
    String soarec = request.getParameter("domain");
    if (soarec != null) {
        SOA_LookUp output = new SOA_LookUp(soarec);
        out.println(output.lookup());
    }
%>
