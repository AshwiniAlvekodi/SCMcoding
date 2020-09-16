<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>Create Business Order New rule</title>
            <script type="text/javascript">
            function validateForm() {
            	var name = document.getElementById("ruleName");
            	  if (name == "") {
            	    alert("Add Rule name ");
            	    return false;
            	  }
            	}
            </script>
        </head>
        <body>
            <form:form id="ruleForm" modelAttribute="createRule" action="createRuleProcess" method="post" onclick="return validateForm();">
                <table align="center">
                    <tr>
                        <td>
                            <form:label path="ruleName">Create New business Rule</form:label>
                        </td>
                        <td>
                            <form:input path="ruleName" name="ruleName" id="ruleName" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="ruleLabel">ruleLabel</form:label>
                        </td>
                        <td>
                            <form:input path="ruleLabel" name="ruleLabel" id="ruleLabel" />
                        </td>
                    </tr>
                    
                    <tr>
                        <td></td>
                        <td>
                            <form:button id="createRule" name="create">Create</form:button>
                        </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td></td>
                        <td><a href="BusinessOrder.jsp">Order Page</a>
                        </td>
                    </tr>
                </table>
            </form:form>
        </body>
        </html>