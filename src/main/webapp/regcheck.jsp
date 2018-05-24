
<%@page import="javax.persistence.EntityManager"%>
<%@page import="domain.Em"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="domain.Main"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("myDatabase");
		EntityManager entityManager = entityManagerFactory.createEntityManager();

		Em employee = new Em();

		employee.setFirstName(request.getParameter("firstName"));
		employee.setLastName(request.getParameter("lastName"));
		employee.setSalary(Integer.parseInt(request.getParameter("salary")));
		employee.setLocality(request.getParameter("locality"));
		employee.setZipCode(request.getParameter("zipCode"));
		employee.setStreet(request.getParameter("street"));
		employee.setStreetNumber(Integer.parseInt(request.getParameter("streetNumber")));

		entityManager.getTransaction().begin();
		entityManager.persist(employee);
		entityManager.getTransaction().commit();

		entityManager.close();
		entityManagerFactory.close();
	%>

	<a href="index.html"> <input type="submit"
		value="Home page" />
	</a>
	<a href="reg.jsp"> <input type="submit"
		value="Back" />
	</a>

</body>
</html>



