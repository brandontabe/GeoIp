//@Author Brandon Tabe, Isaac Motale
package com.geoippractical.lookup;

import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//This is the controller class. It controls the data flow into model 
//object and updates the view whenever data changes. It keeps view and model separate.


@Controller
public class SearchController {

	// inject via application.properties
	@Value("${searchcountrybyip.message:test}")
	private String message = "Hello World";

	
	//This method returns the jsp file upon the HTTP request.
	@RequestMapping("/searchcountrybyip")
	public String Search(Map<String, Object> model) {
		return "searchcountrybyip.jsp";
	}
	
	
	

}