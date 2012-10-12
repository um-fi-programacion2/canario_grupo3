<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>RegisterUser - Struts2 Hibernate Example</title>
<s:head />
</head>
<body>
<h1>User Registration</h1>
<s:actionerror />
<s:form action="register" method="post">
	<s:textfield name="name" label="Name" />
	<s:textfield name="emailId" label="Email" />
	<s:password name="password" label="Password" />
	<s:textfield name="cellNo" label="Cell No." />
	<s:textfield name="website" label="Homepage" />
	<s:textfield name="birthDate" label="Birthdate" />
	<s:submit value="Register" align="center" />
</s:form>
</body>
</html>