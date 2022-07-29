package fr.m2i.models;

import java.time.LocalDateTime;

public class Tache {
	
	private String nom;
	private String description;
	private LocalDateTime date;
	
	public Tache(String nom, String description, LocalDateTime date) {
		this.setDate(date);
		this.setDescription(description);
		this.setNom(nom);
	}

	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public LocalDateTime getDate() {
		return date;
	}
	public void setDate(LocalDateTime date) {
		this.date = date;
	}

}
