package com.codingdojo.springdojosandninjas.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.springdojosandninjas.models.Dojos;
import com.codingdojo.springdojosandninjas.models.Ninjas;
import com.codingdojo.springdojosandninjas.services.DojosService;
import com.codingdojo.springdojosandninjas.services.NinjasService;

import jakarta.validation.Valid;

@Controller
public class HomeController {

	@Autowired
	private NinjasService ninjasService;
	
	@Autowired
	private DojosService dojosService;
	
	//dashboard
	@GetMapping("/")
	public String renderDash(Model model) {
		model.addAttribute("ninjaList", ninjasService.allNinjas());
		return "ninjaDashboard.jsp";
		}
	
	// create dojo
	//render dojo form
	@GetMapping("/dojos/new")
	public String renderDojoForm(@ModelAttribute("newDojos") Dojos newDojo) {
	    return "createDojo.jsp";
	}
	
	@PostMapping("/dojos/new")
	public String processDojoForm(@Valid @ModelAttribute("newDojos") Dojos newDojo, BindingResult result) {
		if(result.hasErrors()) {
			return "createDojo.jsp";
		} else {
			dojosService.createDojo(newDojo);
			return "redirect:/";
		}
	}
	
	@GetMapping("/ninjas/new")
	public String rengerCreateForm(@ModelAttribute("newNinjas") Ninjas newNinja, Model model) {
		model.addAttribute("dojoList", dojosService.allDojos());
		return "createNinja.jsp";
	}
	
	@PostMapping("/ninjas/new")
	public String processNinjaForm(@Valid @ModelAttribute("newNinjas") Ninjas newNinja, BindingResult result) {
		if(result.hasErrors()) {
			return "createNinja.jsp";
		} else {
			ninjasService.createNinjas(newNinja);
			return "redirect:/";
		}
	}
	
	@GetMapping("/dojos/{id}")
	public String dojoDetails(@PathVariable("id")Long id, Model model) {
		model.addAttribute("dojo", dojosService.findDojos(id));
		return "dojoDetails.jsp";
	}
	
}
