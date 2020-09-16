<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>Book</title>
        </head>
        <body>
            <form:form id="ruleForm" modelAttribute="createRule" action="createRuleProcess" method="post">
                <p> Selected payment is for : Book</p>
                <p> Create a duplicate packing slip for a royalty Department... to do</p>
                        <p><a href="BusinessOrder.jsp">Order Page</a></p>
                       
            </form:form>
        </body>
        </html>