<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Wilkommen</title>
	<jsp:include page="./inc/_style.jsp"/>
</head>

<body>
<header>
	<jsp:include page="./inc/_header.jsp"/>
</header>

<jsp:include page="./inc/_menu.jsp"/>

<input type="button" value="Click here... attention ça peut sauter!" id="get">
<input type="button" value="Click here... pour plus de détail!" id="detail">

<!-- affichage liste course  -->
<div id="parent">
</div>

<!-- SELECT => stockage liste  -->
<select id="liste">
</select>

<div id="detail-content">
</div>


<main>

	<script>
	 	
	 	//event listener bouton
		document.querySelector('#get').addEventListener('click',()=>{ 		
			fetch("/demo1/api/tache") //récup données de la class TacheManager.java
	 		.then((response) => response.json()) //transforme response en JSON
	 		.then((data)=>{ //traitement response, transforme en date aka array avec id
				let parent = document.getElementById('parent'); //	va chercher la div "parent"		
	
				console.table(data); //affichage data dans console
				
				for(element of data){ //boucle for traitement de la donnée dans data
					let p = document.createElement('p'); //crée element p
					//boucle ajout éléments DANS p
					p.innerHTML = element.nom + "---" +element.description + 
					"---" + element.date.year + 
					"/" + element.date.monthValue + 
					"/" + element.date.dayOfMonth + "<br>";
					//crée elements dans parent
					parent.appendChild(p);
				} 
			});
		});
		 
		//selection pour afficher dans la liste déroulante
		fetch("/demo1/api/tache")
			 .then((response) => response.json())
			 .then((data)=>{
				 let liste = document.getElementById('liste');
					console.table(data);
					console.log(data);
				 for(let i = 0; i < data.length; i++){
					let option = document.createElement('option');
					option.innerHTML = data[i].nom;
					option.setAttribute("value", i);
					liste.appendChild(option);
				} 
		 });
		
		//affiche détails
	 	document.querySelector('#detail').addEventListener('click',()=>{			 
			 fetch("/demo1/api/tache/" + document.querySelector('#liste').value)
			 .then((response) => response.json())
			 .then((data)=>{
				 let detail = document.getElementById('detail-content');
					console.table(data);
					let p = document.createElement('p');
					p.innerHTML = data.nom + "---" +data.description + 
					"---" + data.date.year + 
					"/" + data.date.monthValue + 
					"/" + data.date.dayOfMonth + "<br>";
					detail.appendChild(p);
			 });
		});
	 
	</script>

	<div id="formulaire">
		<fieldset legend="Formulaire création User">	
			<form action="<c:url value="/api/creationuser/newuser"/>" method="post" >
  				<div class="form-example">
				    <label for="login">Entrez your login: </label>
				    <input type="text" name="login" id="login" required>
			  	    <label for="mdp">Entrez votre mot de passe: </label>
				    <input type="text" name="mdp" id="mdp" required>
			  	</div>
				  <div class="form-example">
				    <input type="submit" value="Création !">
				  </div>	
			</form>
		</fieldset>	
	</div>
	
	
</main>

<footer>
 	<jsp:include page="/WEB-INF/pages/inc/_footer.jsp"/>
</footer>

</body>
</html>