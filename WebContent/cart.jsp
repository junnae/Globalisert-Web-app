<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="kopp" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cart</title>
</head>
<body>
	<p><jsp:include page="chooseLanguage.jsp" /></p>
	<fmt:bundle basename="Messages">
	<h1><fmt:message key="cart" /></h1>
	
	<table style="width:100%" border="1">
	  <tr>
	    <td><fmt:message key="name" /></td>
	    <td><fmt:message key="description" /></td>		
	    <td><fmt:message key="quantity" /></td>
	     <td><fmt:message key="price" /></td>
	  </tr>
	  <tr>
	    <td>White Coffee Cup (TM)</td>
	    <td><kopp:shorttext maxChars="20"><fmt:message key="whitecoffecup" /></kopp:shorttext></td>		
	    <td>
	    <% Object ob = request.getAttribute("white");
	    out.print(ob);%>
	    </td>
	    <td>
	    <%
	    Object ob2 = request.getAttribute("whiteprice");
	    out.print(ob2);%></td>
	  </tr>
	  <tr>
	    <td>Blue Coffee Cup (TM)</td>
	    <td><kopp:shorttext maxChars="20"><fmt:message key="bluecoffecup" /></kopp:shorttext> </td>		
	    <td>
	    <% Object ob3 = request.getAttribute("blue");
	    out.print(ob3);%>
	    </td>
	    <td>
	    <% Object ob4 = request.getAttribute("blueprice");
	    out.print(ob4);%>
	    </td>
	  </tr>
	  <tr>
	    <td colspan="3" align="right"><fmt:message key="amount" /></td>
	    <td>
	    <% Object ob5 = request.getAttribute("totsum");
	    out.print(ob5);%>
	    </td>
	  </tr>
	</table>
	
	<p><a href="/GlobalisertWebApp/index.jsp"><fmt:message key="home" /></a> <a href="/GlobalisertWebApp/products.jsp"><fmt:message key="product" /></a></p>
	<p>
		&#xa9; <kopp:roman decimalNumber="2008"> Høgskolen i Bergen </kopp:roman>
	</p>
	
	</fmt:bundle>
</body>
</html>