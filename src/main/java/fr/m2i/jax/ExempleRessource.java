package fr.m2i.jax;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/exemple")
public class ExempleRessource {
	
	@Produces({MediaType.APPLICATION_JSON})
	@GET
	public String sayHello() {
		return "Hello the world";
	}
}
