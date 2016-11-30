<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 30-Nov-16
  Time: 2:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guess</title>
</head>

//the % syntax is a scriptlet
<%
    //getting parameter from register.html with the name "nric" to store in the objects.
    String nric = request.getParameter("nric");
    String email = request.getParameter("email");

    if(nric != null && email != null){
        session.setAttribute("nric", nric);
        session.setAttribute("email", email);
    }else{
        nric = (String)session.getAttribute("nric");
        email = (String)session.getAttribute("email");
    }
%>

<body>
<form action="/controller">
    Your NRIC is <%= nric %> <br>
    Your email address is <%= email %>
    <input type="text" name="guess" placeholder="Pick your lucky number" />
    <input type="submit" />
</form>

</body>
</html>
