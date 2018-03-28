<%--
  Created by IntelliJ IDEA.
  User: j
  Date: 08.06.2016
  Time: 8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.digtld.*" %>
<%@ page import="de.malkusch.whoisApi.RecoverableWhoisApiException" %>
<html>
<head>
    <title>Domain multitool</title>
</head>

<body>
<a href="tracert.jsp">Traceroute</a>
<form action="" method="GET">
    <input type="text" size="20" name="domain" placeholder="example.com" required>
    <input type="submit" value="Check">
</form>

<pre>
        <%
    String ipv4 = request.getParameter("domain");
    if (ipv4 != null) {
        out.println("<h4>A record</h4><br>");
        A_LookUp output = new A_LookUp(ipv4);
        out.println(output.lookup());
    }
%>

    <%
    String ipv66 = request.getParameter("domain");
    if (ipv66 != null) {
        out.println("<h4>AAAA Record:</h4><br>");
        AAAA_Lookup output = new AAAA_Lookup(ipv66);
        out.println(output.lookup());
    }
%>
    <%
    String cname = request.getParameter("domain");
    if (cname != null) {
        out.println("<h4>CNAME Record:</h4><br>");
        CNAME_LookUp output = new CNAME_LookUp(cname);
        out.println(output.lookup());
    }
%>


<%
    String mxrec = request.getParameter("domain");
    if (mxrec != null) {
        out.println("<h4>MX Records:</h4><br>");
        MXLookUp output = new MXLookUp(mxrec);
        out.println(output.lookup());
    }
%>
   <%
    String ptrrec = request.getParameter("domain");
    if (ptrrec != null) {
        out.println("<h4>PTR record:</h4><br>");
        PTR_Record_Lookup output = new PTR_Record_Lookup(ptrrec);
        out.println(output.lookup());
    }
%>
    <%
    String soarec = request.getParameter("domain");
    if (soarec != null) {
        out.println("<h4>SOA record:</h4><br>");
        SOA_LookUp output = new SOA_LookUp(soarec);
        out.println(output.lookup());
    }
%>
    <%
    String srvrec = request.getParameter("domain");
    if (srvrec != null) {
        out.println("<h4>SRV record:</h4><br>");
        SRV_LookUp output = new SRV_LookUp(srvrec);
        out.println(output.lookup());
    }
%>
    <%
    String TXTrec = request.getParameter("domain");
    if (TXTrec != null) {
        out.println("<h4>TXT Record:</h4><br>");
        TXT_LookUp output = new TXT_LookUp(TXTrec);
        out.println(output.lookup());
    }
%>
           <%
    String ipAddress = request.getParameter("domain");
    if (ipAddress != null) {
        out.println("<h4>DNSBL Status:</h4><br>");
        BlackListCheck output = new BlackListCheck(ipAddress);
        out.println(output.lookup());
    }
%>

          <pre>
              <%
                        String whois = request.getParameter("domain");
                        if (whois != null) {
                            out.println("<h4>WHOIS Lookup:</h4><br>");
                            WHOIS_LookUP output = new WHOIS_LookUP(whois);
                            try {
                    out.println(output.lookup());} catch (RecoverableWhoisApiException e) {
                        e.printStackTrace();
                    }
                        }
               %>
          </pre>
</body>

</html>
