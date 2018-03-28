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
    String ptrrec = request.getParameter("domain");
    if (ptrrec != null) {
        PTR_Record_Lookup output = new PTR_Record_Lookup(ptrrec);
        out.println(output.lookup());
    }
%>
