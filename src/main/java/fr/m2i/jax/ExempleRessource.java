package fr.m2i.jax;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import fr.m2i.models.User;

@Path("/exemple")
public class ExempleRessource {
	
	@Produces({MediaType.APPLICATION_JSON})
	@GET
	public List<User> sayHello() {
		//return "Hello the world";
		List<User> users = new ArrayList<User>();
		
		users.add(new User("test", "test"));
		
		return users;
		
	}
}
