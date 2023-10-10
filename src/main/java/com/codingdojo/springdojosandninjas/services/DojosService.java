package com.codingdojo.springdojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.springdojosandninjas.models.Dojos;
import com.codingdojo.springdojosandninjas.repositories.DojoRepository;

@Service
public class DojosService {

		@Autowired
		private DojoRepository dojoRepo;
		
		//find all
		public List<Dojos> allDojos(){
			return dojoRepo.findAll();
		}
	
		//find one
		public Dojos findDojos(Long id) {
			Optional<Dojos> optionalDojos = dojoRepo.findById(id);
			if(optionalDojos.isPresent()) {
				return optionalDojos.get();
			}else { return null;}
		}
		
		//create
		public Dojos createDojo(Dojos newDojo) {
			return dojoRepo.save(newDojo);
		}
}
