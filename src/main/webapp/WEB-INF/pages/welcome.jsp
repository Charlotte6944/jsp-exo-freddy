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
<title>Insert title here</title>

<jsp:include page="./inc/_style.jsp"/>

</head>
<body>
<jsp:include page="./inc/_header.jsp"/>
<jsp:include page="./inc/_menu.jsp"/>

<input type="button" value="Click here... attention ça peut sauter!" id="get">

<div id="parent">
</div>

<select id="liste">
</select>
<input type="button" value="Click here... pour plus de détail!" id="detail">
<div id="detail-content">
</div>

<main>

 <script>
 	
	 document.querySelector('#get').addEventListener('click',()=>{
			 fetch("/demo1/api/tache")
			 .then((response) => response.json())
			 .then((data)=>{
				 let parent = document.getElementById('parent');
					console.table(data);
				 for(element of data){
					let p = document.createElement('p');
					p.innerHTML = element.nom + "---" +element.description + 
					"---" + element.date.year + 
					"/" + element.date.monthValue + 
					"/" + element.date.dayOfMonth + "<br>";
					parent.appendChild(p);
				} 
			 });
		});
	 
	 	
		fetch("/demo1/api/tache")
			 .then((response) => response.json())
			 .then((data)=>{
				 let liste = document.getElementById('liste');
					console.table(data);
				 for(let i = 0; i < data.length; i++){
					let option = document.createElement('option');
					option.innerHTML = data[i].nom;
					option.setAttribute("value", i);
					liste.appendChild(option);
				} 
			 });
		
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

</main>

 <jsp:include page="/WEB-INF/pages/inc/_footer.jsp"/>
</body>
</html>