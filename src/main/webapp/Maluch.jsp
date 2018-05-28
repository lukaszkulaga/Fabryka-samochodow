
<%@page import="BuildCars.Car" %>
<%@page import="BuildCars.Engine" %>
<%@page import="BuildCars.Tires" %>
<%@page import="BuildCars.CarBuilder" %>
<%@page import="BuildCars.CarDirector" %>

<%@page import=" java.util.List"%>
<%@page import=" javax.persistence.EntityManager"%>
<%@page import=" javax.persistence.EntityManagerFactory"%>
<%@page import=" javax.persistence.Persistence"%>
<%@page import=" javax.persistence.TypedQuery"%>


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




class MaluchBuilder implements CarBuilder
{
	private Car car;

	public MaluchBuilder()
	{
		this.car = new Car();
	}

	public void buildTires()
	{
		
	}

	public void buildEngine()
	{
		
	}

	public Car getCar()
	{
		return car;
	}
}

%>

<%


Tires tire = new Tires();
tire.setDurability1(Integer.parseInt(request.getParameter("durabilityTire")));
tire.setType(request.getParameter("typeTire"));

Engine engine = new Engine();
engine.setType(request.getParameter("typeEngine"));


MaluchBuilder maluch = new MaluchBuilder();
maluch.car.setTires(tire);
maluch.car.setEngine(engine);

CarBuilder carBuilder = maluch;
CarDirector carDirector = new CarDirector(carBuilder);
carDirector.makeCar();

Car car = carDirector.gettCar();
System.out.println(car);


%>

	<form action="buildMaluch.jsp" method="post">
		<input type="submit" value="back">
	</form>



</body>
</html>