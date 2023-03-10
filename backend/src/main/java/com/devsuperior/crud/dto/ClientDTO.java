package com.devsuperior.crud.dto;

import java.io.Serializable;
import java.time.Instant;

import com.devsuperior.crud.entities.Client;


public class ClientDTO implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String name;
	private String cpf;
	private Double income;
	private Integer children;
	private Instant birthDate;
	
	public ClientDTO() {}
	
	public ClientDTO(Long id, String name, String cpf, Double income, Instant birthDate, Integer children) {
		this.id = id;
		this.name = name;
		this.cpf = cpf;
		this.income = income;
		this.birthDate = birthDate;
		this.children = children;
	}
	
	public ClientDTO(Client entity) {
		this.id = entity.getId();
		this.name = entity.getName();
		this.cpf = entity.getCpf();
		this.income = entity.getIncome();
		this.birthDate = entity.getBirthDate();
		this.children = entity.getChildren();
	}
	
	public Long getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getCpf() {
		return cpf;
	}
	public Double getIncome() {
		return income;
	}
	public Integer getChildren() {
		return children;
	}
	public Instant getBirthDate() {
		return birthDate;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public void setIncome(Double income) {
		this.income = income;
	}
	public void setChildren(Integer children) {
		this.children = children;
	}
	public void setBirthDate(Instant birthDate) {
		this.birthDate = birthDate;
	}

}