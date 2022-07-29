<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav>
	<ul>
	
		<li><a href="<c:url value="/welcome"/>">Accueil</a></li>
		<c:if test="${sessionScope['auth']}">
			<li><a href="<c:url value="/welcome?page=AUTRE"/>">Autre</a></li>
		</c:if>
	</ul>

</nav>