<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="maxChars" type="Integer"%>

<jsp:doBody var="theBody" />

<% String text = (String) jspContext.getAttribute("theBody");
boolean tooLong = false;
%>

<% if(text.length() > maxChars) {
	
	text = text.substring(0,maxChars);
	text = text + " ...";
}


%>

<%= text %>