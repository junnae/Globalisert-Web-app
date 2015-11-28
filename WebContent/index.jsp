<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="kopp" tagdir="/WEB-INF/tags"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>index</title>
</head>
<body>
	<p><jsp:include page="chooseLanguage.jsp" /></p>
	<fmt:bundle basename="Messages">
	<h1>Kaffekopper AS</h1>
	
	<%-- alle bilder som er brukt er merket for gjenbruk --%>
	<img src="http://upload.wikimedia.org/wikipedia/commons/4/47/GLAM_coffee_cup_transparent.png" height="220" width="324" />
	<p>
		<fmt:message key="takeALook" /><a href="/GlobalisertWebApp/products.jsp"><fmt:message key="product" /></a>
	</p>
	<p>
		&#xa9; <kopp:roman decimalNumber="2008"> Høgskolen i Bergen </kopp:roman>
	</p>
	</fmt:bundle>
	
	

</body>
</html>