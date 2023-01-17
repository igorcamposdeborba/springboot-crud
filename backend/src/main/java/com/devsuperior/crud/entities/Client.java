package com.devsuperior.crud.entities;

import java.io.Serializable;
import java.time.Instant;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_client")
public class Client implements Serializable {
	@Id // identifica que este atributo é um id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // incrementar ID no banco de dados
	private Long id;
	private String name;
	private String cpf;
	private Double income;
	private Integer children;
	
	@Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
	private Instant birthDate;

	
	public static final long serialVersionUID = 1L; // converter arquivo em bytes para transmitir em rede (boa prática)
	
	
	public Client () {}
	
	public Client(Long id, String name, String cpf, Double income, Instant birthDate, Integer children) {
		this.id = id;
		this.name = name;
		this.cpf = cpf;
		this.income = income;
		this.birthDate = birthDate;
		this.children = children;
	}
	
	public Long getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public Instant getBirthDate() {
		return birthDate;
	}
	public String getCpf() {
		return cpf;
	}
	public Double getIncome() {
		return income;
	}
	public int getChildren() {
		return children;
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
	public void setBirthDate(Instant birthDate) {
		this.birthDate = birthDate;
	}
	public void setChildren(Integer children) {
		this.children = children;
	}
	

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Client other = (Client) obj;
		return Objects.equals(id, other.id);
	}
	
	
}