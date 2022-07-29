package fr.m2i.models;

public class Tache {
	
	private String nom;
	private String description;
	private String date;
	
	public Tache(String nom, String description, String date) {
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

}
