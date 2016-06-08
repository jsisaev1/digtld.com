<%--
  Created by IntelliJ IDEA.
  User: j
  Date: 17.05.2016
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Traceroute from Browser</title>
</head>
<script language="javascript">
    function runapp()
    {
        var CP1251 = [1026,1027,8218,1107,8222,8230,8224,8225,8364,8240,1033,8249,1034,1036,1035,1039,1106,8216,8217,8220,8221,8226,8211,8212,152,8482,1113,8250,1114,1116,1115,1119,160,1038,1118,1032,164,1168,166,167,1025,169,1028,171,172,173,174,1031,176,177,1030,1110,1169,181,182,183,1105,8470,1108,187,1112,1029,1109,1111,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103];
        var IBM866 = [1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,9617,9618,9619,9474,9508,9569,9570,9558,9557,9571,9553,9559,9565,9564,9563,9488,9492,9524,9516,9500,9472,9532,9566,9567,9562,9556,9577,9574,9568,9552,9580,9575,9576,9572,9573,9561,9560,9554,9555,9579,9578,9496,9484,9608,9604,9612,9616,9600,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1025,1105,1028,1108,1031,1111,1038,1118,176,8729,183,8730,8470,164,9632,160];
        var target = document.getElementById("domain").value;
        var cmdLine = "tracert" + " " + target;
        var wshShell = new ActiveXObject("WScript.Shell");
        var out = wshShell.Exec(cmdLine);
        var a=out.StdOut.ReadAll();
        var b='';
        for (var i=0;i<a.length;i++) {
            var dec = a.charCodeAt(i);
            var ind = CP1251.indexOf(dec);
            b+=String.fromCharCode(ind > -1 ? IBM866[ind] : dec);
        }
        document.getElementById('output').innerHTML=b;
    }
</script>
<div>
    <a href="index.jsp">Return to main page</a>

    This page will work only in Microsoft Internet Explorer because of ActiveX!

    Also it will work only if you'll add this site to trusted and allow it to run scripts.

    You can download .REG file with required parameters (it'll add this site to trusted and allow it to run ActiveX objects):

     <a href="https://www.digtld.com/activex_allow_IE.reg">Download</a>
</div>
<input id="domain">
<button onclick="runapp();">Run traceroute</button>
<hr>
<pre id="output"></pre>
<hr>