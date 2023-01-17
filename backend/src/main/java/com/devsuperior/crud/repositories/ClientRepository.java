package com.devsuperior.crud.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devsuperior.crud.entities.Client;

@Repository // permite injeção de dependência pelo CategoryService.java
public interface ClientRepository extends JpaRepository<Client, Long> {
	
}
