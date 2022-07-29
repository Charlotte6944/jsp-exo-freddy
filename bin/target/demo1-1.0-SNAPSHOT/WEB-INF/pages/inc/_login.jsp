<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<c:choose >
	<c:when test="${ sessionScope['auth']}">
		<div class="welcome">
			<p>Bonjour ${ sessionScope['login']}</p>
			<a href="<c:url value="/login?logoff=true"/>">#se déconnecter#</a>
			
		</div>
	</c:when>
	<c:otherwise>
		<fieldset>
	<legend>Login</legend>
	<form action="<c:url value="/login" />" method="POST">
		<div>
			<label for="inp_login">Login : </label>
			<input type="text" placeholder="Votre login" name="login" id="inp_login">		
		</div>
		<div>
			<label for="inp_mdp">Mdp : </label>
			<input type="password" placeholder="Votre MDP" name="mdp" id="inp_mdp">		
		</div>
		<input type="submit" value="Login !">
	</form> 
</fieldset>
	
	</c:otherwise>
	

</c:choose>
