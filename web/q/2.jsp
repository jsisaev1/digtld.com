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
    String cname = request.getParameter("domain");
    if (cname != null) {
        CNAME_LookUp output = new CNAME_LookUp(cname);
        out.println(output.lookup());
    }
%>
