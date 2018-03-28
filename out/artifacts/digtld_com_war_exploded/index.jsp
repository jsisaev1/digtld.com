<%--
  Created by IntelliJ IDEA.
  User: j
  Date: 08.06.2016
  Time: 8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="dist/css/bootstrap.css">
<link rel="stylesheet" href="dist/css/bootstrap.min.css">

<head>
    <title>Domain multitool</title>
    <script src="//yandex.st/jquery/1.8.0/jquery.min.js" type="text/javascript"></script>
    <script>
        function onSubmitForm(f) {
          for (var i=0;i<10;i++) {
            $("#r_row"+i).html("Please wait...");
            eval('$.get("/q/"+i+".jsp?domain="+ f.domain.value, function(data) {$("#r_row'+i+'").html(data);});');
          }
        }
    </script>
</head>

<body>


<div class="container">
  <div class="navbar">
  <a href="index.jsp">Domain information</a>
  <a href="tracert.jsp">Traceroute</a>


    </div>
  <form onsubmit="onSubmitForm(this);return false;">
    <input type="text" size="20" name="domain" placeholder="example.com" required>
    <input type="submit" value="Check" class="btn-primary">
  </form>

  <div class="table">
    <table>
        <tr>
            <th>A record</th>
            <td><div id="r_row0"></div></td>
        </tr>
        <tr>
            <th>AAAA record</th>
            <td><div id="r_row1"></div></td>
        </tr>
        <tr>
            <th>CNAME record</th>
            <td><div id="r_row2"></div></td>
        </tr>
        <tr>
            <th>MX records</th>
            <td><div id="r_row3"></div></td></tr>
        <tr>
            <th>PTR record</th>
            <td><div id="r_row4"></div></td></tr>
        <tr>
            <th>SOA record</th>
            <td><div id="r_row5"></div></td></tr>
        <tr>
            <th>SRV record</th>
            <td><div id="r_row6"></div></td></tr>
        <tr>
            <th>TXT record</th>
            <td><div id="r_row7"></div></td></tr>
        <tr>
            <th>DNSBL status</th>
            <td><div id="r_row8"></div></td>
        </tr>
    </table>
    <table>
        <tr>
            <th>WHOIS Lookup:</th>
            <td><div width="600px"><pre><div id="r_row9"></div></pre></div></td>
        </tr>
    </table>
</div>
  </div>


</body>

</html>
