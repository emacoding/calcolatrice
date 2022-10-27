<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Calcolatrice</title>
</head>
<body>
	<h2>Pagina calcolo</h2>
	
<%  

String primonumero= request.getParameter("primonumero");
String secondonumero= request.getParameter("secondonumero");

if(primonumero!=null && secondonumero!=null)
{
double numero1=Double.parseDouble(primonumero);//converting back into integer
double numero2=Double.parseDouble(secondonumero);//converting back into integer

%>


	<form action="stampa"  method="post">
    <table>
         <tr valign="top">
         
             <td><label for="field1"> Primo numero: </label></td>
                          <td><input type=text name="primonumero" value= <%=numero1 %> required></td>
             
         </tr>
         <tr valign="top">
         
         
             <td><label for="field2"> Secondo numero: </label></td>
             <td><input type=text name=secondonumero value= <%=numero2 %> required> </td>
         </tr>
         
    </table>
    <input value="invia" type="submit">
</form>

<%


}
else{
	
%>
	
	<form action="stampa"  method="post">
    <table>
         <tr valign="top">
         
             <td><label for="field1"> Primo numero: </label></td>
                          <td><input type=text name="primonumero" required></td>
             
         </tr>
         <tr valign="top">
         
         
             <td><label for="field2"> Secondo numero: </label></td>
             <td><input type=text name=secondonumero required> </td>
         </tr>
         
    </table>
    <input value="invia" type="submit">
</form>

<%
}
%>
</body>
</html>