<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Errore</title>
</head>
<body>
	<h2>ATTENZIONE</h2>
	
	

<p><b>Errore!</b>
Sono stati inseriti numeri negativi, decimali, o simboli.. riprova inserendo numeri interi positivi
   <br>
   
   <b>Primo numero:</b>
       <%= request.getParameter("primonumero") %>
   
  <br>
  
  <b>Secondo numero:</b>
      <%= request.getParameter("secondonumero") %>
  
  <br>
  <br>
  
  <%  try{
  		double primonumero =  Double.parseDouble(request.getParameter("primonumero")); 
  		double secondonumero =  Double.parseDouble(request.getParameter("secondonumero")); 
  %>
  
    <a href="home?primonumero=<%= primonumero%>&secondonumero=<%= secondonumero%>">Torna all'inserimento</a>
  <% }
  catch(Exception e){
	  %>
	    <a href="home">Torna all'inserimento</a>
<%
  }
  %>
  
</p>

	
</body>
</html>