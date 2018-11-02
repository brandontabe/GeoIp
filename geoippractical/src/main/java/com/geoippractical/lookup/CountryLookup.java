//@Author: Brandon Tabe, Isaac Motale
package com.geoippractical.lookup;

import java.io.IOException;

import com.maxmind.geoip.Country;
import com.maxmind.geoip.LookupService;


//this is a custom class that contains setter and getter methods 
//that will set and get the value from the variable.
//The class also creates an object the LookupService and uses the path 
//of the database as the parameter. 
//it also uses the GEOIP_MEMORY_CACHE as parameter to ensure that the database only
//loads once into memory.


public class CountryLookup {

	private String ipAddress;

	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public CountryLookup() throws IOException {

	}

	// The creation of this object allows us to indicate the path to the database, and 
	//also load the database only once.

	LookupService lookupService = new LookupService("../geoippractical/src/main/resources/GeoIP.dat",
			LookupService.GEOIP_MEMORY_CACHE | LookupService.GEOIP_CHECK_CACHE);

	//this searches through the database to get the name of the country that matches with 
	//the specified IP Address.
	Country country = lookupService.getCountry(ipAddress);
}
