package fr.m2i.jax;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import fr.m2i.models.User;

@Path("/creationuser")
public class CreationUser {
	
	
	@Path("/newuser")
	@Consumes({MediaType.APPLICATION_FORM_URLENCODED})
	@POST
	public void sayHello(@FormParam("login") String login, @FormParam("mdp") String mdp) {
		
		List<User> users = new ArrayList<User>();
		
		users.add(new User(login, mdp));
		
		System.out.println("Login utilisateur : " + users.get(0).getLogin());
		System.out.println("MdP utilisateur : " + users.get(0).getMdp());
	}
	
	
}
