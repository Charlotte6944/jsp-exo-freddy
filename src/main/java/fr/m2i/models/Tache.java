package fr.m2i.models;

import java.sql.Date;

public class Tache {
	
	private String nom;
	private String description;
	private Date date;
	
	public Tache(String nom, String description, Date date) {
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
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

}
