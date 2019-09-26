package com.wanchopi.spring.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wanchopi.spring.model.Student;

/**
 * StudentController.java, the controller
 * @author wanchopi
 *
 */
@Controller
@RequestMapping("/student")
@Component
public class StudentController {
	
	@Value("${countries}")
	private String countries;	// carga el valor 'countries' del properties
	
	@Value("${languages}")
	private String languages;	// carga el valor 'languages' del properties
	
	
	@ModelAttribute("countryList")
	public String[] loadCountries() {
		String[] items = this.countries.split(",");	// convierte un string separado por comas en un array
		return items;
			
	}
	
	@ModelAttribute("languageList")
	public String[] loadLanguages() {
		String[] items = this.languages.split(","); // convierte un string separado por comas en un array
		return items;
	}

	@RequestMapping("/goForm")
	public String showForm(Model model) {
		
		Student student = new Student();
		model.addAttribute("student", student);
		return "StudentForm";
	}

	@RequestMapping("/processForm")
	public String processForm(@ModelAttribute("student") Student student) {
		return "StudentSuccess";
	}

}
