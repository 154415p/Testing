<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 30-Nov-16
  Time: 2:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Try again</title>
</head>
<body>
Congratulation <%= session.getAttribute("nric") %> <%= request.getParameter("guess") %> is the right number! <a href="guess.jsp">Back to Home </a>
</body>
</html>
