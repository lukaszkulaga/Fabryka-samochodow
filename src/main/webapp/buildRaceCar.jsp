<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>







	<form action="raceCar.jsp" method="post">
	
	
	
	
	<p>choose durability tire </p>
<input type="radio" name="durabilityTire" value="80" />80<br />
<input type="radio" name="durabilityTire" value="90" />90<br />
<input type="radio" name="durabilityTire" value="100" />100<br/>


<p>choose type tire </p>
<input type="radio" name="typeTire" value="a1" />a1<br />
<input type="radio" name="typeTire" value="a2" />a2<br />
<input type="radio" name="typeTire" value="a3" />a3<br/>


<p>choose type engine </p>
<input type="radio" name="typeEngine" value="v4" />v4<br />
<input type="radio" name="typeEngine" value="v5" />v5<br />
<input type="radio" name="typeEngine" value="v6" />v6<br/>
	
	
	
		<input type="submit" value="build race car">
	</form>

	<form action="buildCar.html" method="post">
		<input type="submit" value="back">
	</form>

	<form action="index.html" method="post">
		<input type="submit" value="home page">
	</form>



</body>
</html>