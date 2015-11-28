<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="kopp" tagdir="/WEB-INF/tags"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>products</title>
</head>
<body>
	<p><jsp:include page="chooseLanguage.jsp" /></p>
	<fmt:bundle basename="Messages">
	<h1>White Coffee Cup&#x2122;</h1>
	
	<style>
		#white img { float:left; display:inline; padding-right:10px;} 
		#white p {}
		#blue img { float:left; display:inline; padding-right:10px} 
		#blue p {}
    </style>
    
	<div id="white">
		<img src="http://upload.wikimedia.org/wikipedia/commons/b/bf/White_cup_filled_with_coffee.jpg" height="100" width="100" />
		<p> <fmt:message key="whitecoffecup" /> </p>
		<FORM NAME="form1" action ="main" METHOD="POST">
            <INPUT TYPE="HIDDEN" NAME="name" value="form1">
            <INPUT TYPE="BUTTON" VALUE=" <fmt:message key="button" />" ONCLICK="button1()">
        </FORM>
	</div>
	
	<h1>Blue Coffee Cup&#x2122;</h1>
	
	<p></p>
	<div id="blue">
		<img src="http://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Coffee_cup_(1).jpg/800px-Coffee_cup_(1).jpg" height="100" width="100" />
		<p> <fmt:message key="bluecoffecup" /> </p>
		<FORM NAME="form2" action="main" METHOD="POST">
            <INPUT TYPE="HIDDEN" NAME="name" value="form2">
            <INPUT TYPE="BUTTON" VALUE="<fmt:message key="button" />" ONCLICK="button2()">
        </FORM>
	</div>
	
	<br />
	<br />
	<FORM NAME="form3" action="main" METHOD="POST">
            <INPUT TYPE="HIDDEN" NAME="name" value="form3">
            <INPUT TYPE="BUTTON" VALUE=" GO" ONCLICK="button3()">
        </FORM>
        
        <br />

	
	
        <SCRIPT LANGUAGE="JavaScript">
    
            function button1()
            {
                	document.form1.submit();

            }    
            function button2()
            {
            	document.form2.submit();

            }    
            function button3()
            {
            	document.form3.submit();

            }    

        </SCRIPT>
        
    
	<p><a href="/GlobalisertWebApp/index.jsp"><fmt:message key="home" /></a> <a href="/GlobalisertWebApp/cart.jsp"><fmt:message key="cart" /></a></p>
	<p>
		&#xa9; <kopp:roman decimalNumber="2008"> Høgskolen i Bergen </kopp:roman>
	</p>
	</fmt:bundle>
</body>
</html>