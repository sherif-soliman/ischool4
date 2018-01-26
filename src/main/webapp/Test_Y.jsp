<%@page import="java.util.Enumeration"%>


<html >



<head>
<title>Home ... iSchool</title>





</head>
<body bgcolor="white" onresize="adjust_width();">

<%
Enumeration headerNames = request.getHeaderNames();
while(headerNames.hasMoreElements()) {
  String headerName = (String)headerNames.nextElement();
  out.println("<br\\>" + headerName);
  out.println("::" + request.getHeader(headerName));
}
%>
</body>
</html>