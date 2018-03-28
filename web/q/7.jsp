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
    String TXTrec = request.getParameter("domain");
    if (TXTrec != null) {
        TXT_LookUp output = new TXT_LookUp(TXTrec);
        out.println(output.lookup());
    }
%>
