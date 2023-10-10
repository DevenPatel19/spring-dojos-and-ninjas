package com.codingdojo.springdojosandninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.springdojosandninjas.models.Dojos;

@Repository
public interface DojoRepository extends CrudRepository<Dojos, Long>{
	List<Dojos> findAll();
}
