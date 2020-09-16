<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>physical product OR Book</title>
        </head>
        <body>
            <form:form id="ruleForm" modelAttribute="createRule" action="createRuleProcess" method="post">
                <p> Selected payment is for : physical product OR Book</p>
                <p> Generate a commission payment... to do</p>
                        <p><a href="BusinessOrder.jsp">Order Page</a></p>
                       
            </form:form>
        </body>
        </html>