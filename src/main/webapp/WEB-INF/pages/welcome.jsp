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
					p.innerHTML = element.nom + "---" +element.description + "---" +element.date + "<br>";
					parent.appendChild(p);
				} 
			 });
		});
 
 </script>




</main>

 <jsp:include page="/WEB-INF/pages/inc/_footer.jsp"/>
</body>
</html>