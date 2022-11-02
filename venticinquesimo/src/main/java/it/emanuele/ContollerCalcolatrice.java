package it.emanuele;



import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
 

@Controller

public class ContollerCalcolatrice {

	
	
	
		
		@RequestMapping("/home")
	   public  String home() {
			
	        return "calcolatrice";
	        
	    }

		

		@RequestMapping("/stampa")
	   public  String stampa(Map <String, Object> invia , HttpServletRequest request) {
			double risultato=0;
			
			
			 try {
				 
				 double numero1= Double.parseDouble(request.getParameter("primonumero"));
					double numero2= Double.parseDouble(request.getParameter("secondonumero"));

					int numerouno = (int)numero1;
					int numerodue = (int)numero2;
					
					double differenzauno = numero1- numerouno;
					double differenzadue = numero2- numerodue;

					 risultato = numero1 + numero2;
				 
			 if(numero1>=0 && numero2>=0 && (differenzauno==0) && (differenzadue==0))
			 {
			 invia.put("risultato", risultato);

		        return "stampa";
			 
			 }
			 
			 else
			 {
				 
				 return "errore";
				 
			 }
			 }
			 catch(Exception e) {
				 return "errore";
			
			 }
	        
	    }
		
		
		}
		
	

