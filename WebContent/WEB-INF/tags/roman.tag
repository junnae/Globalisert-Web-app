<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ tag import="java.util.Calendar" %>
<%@ attribute name="decimalNumber" type="Integer"%>
 
<%!String[] romanNumbers = { "???", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X" };%>
 
<c:if test="decimalNumber < 1 || decimalNumbers > 3999">
        <%
            decimalNumber = 0;
        %>
</c:if>
 
 
<%!  private String intToRoman( int input) {
        String s= "";
        while (input >= 1000) {
        s += "M";
        input -= 1000;        }
    while (input >= 900) {
        s += "CM";
        input -= 900;
    }
    while (input >= 500) {
        s += "D";
        input -= 500;
    }
    while (input >= 400) {
        s += "CD";
        input -= 400;
    }
    while (input >= 100) {
        s += "C";
        input -= 100;
    }
    while (input >= 90) {
        s += "XC";
        input -= 90;
    }
    while (input >= 50) {
        s += "L";
        input -= 50;
    }
    while (input >= 40) {
        s += "XL";
        input -= 40;
    }
    while (input >= 10) {
        s += "X";
        input -= 10;
    }
    while (input >= 9) {
        s += "IX";
        input -= 9;
    }
    while (input >= 5) {
        s += "V";
        input -= 5;
    }
    while (input >= 4) {
        s += "IV";
        input -= 4;
    }
    while (input >= 1) {
        s += "I";
        input -= 1;
    }    
    return s;
 
}
%>
 
<%      Calendar rightNow = Calendar.getInstance();
int year = rightNow.get(Calendar.YEAR);
%>
 
<%= intToRoman(decimalNumber)%> - <%= intToRoman(year) %>
 
<jsp:doBody />