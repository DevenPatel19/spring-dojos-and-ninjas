package com.codingdojo.springdojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.springdojosandninjas.models.Ninjas;
import com.codingdojo.springdojosandninjas.repositories.NinjaRepository;

@Service
public class NinjasService {

	@Autowired
	private NinjaRepository ninjaRepo;
	
	//find all
	public List<Ninjas> allNinjas(){
		return ninjaRepo.findAll();
	}
	
	//find one
	public Ninjas findNinjas(Long id) {
		Optional<Ninjas> optionalNinjas = ninjaRepo.findById(id);
		if(optionalNinjas.isPresent()) {
			return optionalNinjas.get();
		} else { return null;}
		
	}
	
	//create
	public Ninjas createNinjas(Ninjas newNinja) {
		return ninjaRepo.save(newNinja);
	}
	

	
	
	
}
