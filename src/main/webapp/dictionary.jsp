<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 3/25/2022
  Time: 10:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>VietnameseDictionary</title>
</head>
<body>
  <%!
      Map<String,String>dictionary = new HashMap<>();
  %>

<%
    dictionary.put("cat","meo");
    dictionary.put("dog","cho");
    dictionary.put("tiger","ho");
    dictionary.put("bear","gau");
    dictionary.put("lion","su tu");

    String search = request.getParameter("search");
    String result = dictionary.get(search);

    if (result != null){
        out.println("Word: " + search );
        out.println("Result: " + result);
    }
    else {
        out.println("Not Found");
    }
%>
</body>
</html>
