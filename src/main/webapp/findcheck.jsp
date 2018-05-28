
<%@page import=" java.util.List"%>
<%@page import=" javax.persistence.EntityManager"%>
<%@page import=" javax.persistence.EntityManagerFactory"%>
<%@page import=" javax.persistence.Persistence"%>
<%@page import=" javax.persistence.TypedQuery"%>
<%@page import=" domain.Em"%>





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

		TypedQuery<Em> query = entityManager.createQuery("select e from Em e  ", Em.class);

		List<Em> employees = query.getResultList();
		
		
		

		for (Em employee : employees)
		{

			if (employee.getLastName().equals(request.getParameter("lastName")))
			{
				System.out.println(employee.getLastName());
				System.out.println(employee.getFirstName());
				System.out.println(employee.getSalary());
				System.out.println(employee.getLocality());
				System.out.println(employee.getStreet());
				System.out.println(employee.getStreetNumber());
				System.out.println(employee.getZipCode());
				
			}	

		}
		

		entityManager.close();
		entityManagerFactory.close();
	%>

	<a href="index.html"> <input type="submit"
		value="Home page" />
	</a>
	
	
	<a href="find.jsp"> <input type="submit"
		value="Back" />
	</a>

</body>
</html>



