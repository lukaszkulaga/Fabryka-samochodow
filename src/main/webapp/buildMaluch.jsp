<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>






	<form action="Maluch.jsp" method="post">
	
	
	
	<p>choose durability tire </p>
<input type="radio" name="durabilityTire" value="50" />50<br />
<input type="radio" name="durabilityTire" value="60" />60<br />
<input type="radio" name="durabilityTire" value="70" />70<br/>


<p>choose type tire </p>
<input type="radio" name="typeTire" value="b1" />b1<br />
<input type="radio" name="typeTire" value="b2" />b2<br />
<input type="radio" name="typeTire" value="b3" />b3<br/>


<p>choose type engine </p>
<input type="radio" name="typeEngine" value="v1" />v1<br />
<input type="radio" name="typeEngine" value="v2" />v2<br />
<input type="radio" name="typeEngine" value="v3" />v3<br/>
	

		<input type="submit" value="build MALUCH">
	</form>

	<form action="buildCar.html" method="post">
		<input type="submit" value="back">
	</form>

	<form action="index.html" method="post">
		<input type="submit" value="home page">
	</form>
	
</body>
</html>