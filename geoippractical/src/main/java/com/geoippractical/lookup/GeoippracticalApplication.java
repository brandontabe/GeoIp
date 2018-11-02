package com.geoippractical.lookup;


import java.io.IOException;
import java.util.Scanner;

import org.springframework.boot.autoconfigure.SpringBootApplication;


//This class contains the main method.
// THis class will be used to test the application through the terminal using the scanner class 
//before it is launched on the web.

@SpringBootApplication
public class GeoippracticalApplication {

	public static void main(String[] args) throws IOException {
		@SuppressWarnings("resource")
		Scanner scanner = new Scanner(System.in);
		
		CountryLookup cl = new CountryLookup();
		// The creation of this object allows us to test the application through the
		// terminal.
	
		System.out.println("Enter IP address");
		String ipAddress = scanner.nextLine();
		
		//Displays the name of the country of the inserted IP address.
		System.out.println(cl.lookupService.getCountry(ipAddress).getName());
			
		
	}
}
