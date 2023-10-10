package com.codingdojo.springdojosandninjas.models;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name="dojos")
public class Dojos {

		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private Long id;
		
		@NotNull
		@Size(min=2, message="Name must be at least 2 characters")
		private String name;
		
		@Column(updatable=false)
		@DateTimeFormat(pattern="yyyy-MM-dd")
		private Date createdAt;
		
		@DateTimeFormat(pattern="yyyy-MM-dd")
		private Date updatedAt;
		
		@PrePersist
		protected void onCreate() {
			this.createdAt = new Date();
		}
		
		@PreUpdate
		protected void onUpdate() {
			this.updatedAt = new Date();
		}
		
		
		@OneToMany(mappedBy="dojos", fetch=FetchType.LAZY)
		// one dojo can have many ninjas
		private List<Ninjas> ninjas;
		
		public List<Ninjas> getNinjas() {
			return ninjas;
		}

		public void setNinjas(List<Ninjas> ninjas) {
			this.ninjas = ninjas;
		}

		public Dojos() {
			
		}
		
		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public Date getCreatedAt() {
			return createdAt;
		}

		public void setCreatedAt(Date createdAt) {
			this.createdAt = createdAt;
		}

		public Date getUpdatedAt() {
			return updatedAt;
		}

		public void setUpdatedAt(Date updatedAt) {
			this.updatedAt = updatedAt;
		}

		
		
		
		
}
