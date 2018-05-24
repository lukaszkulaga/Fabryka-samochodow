<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<form action="" method="post" enctype="text/plain"><div>

<input name="Imię" />Podaj swoje imię<br />
<input name="Nazwisko" />Podaj swoje nazwisko

<p>Podaj swoją płeć:</p>
<input type="radio" name="Płeć" value="Kobieta" />Kobieta
<input type="radio" name="Płeć" value="Mężczyzna" />Mężczyzna
<
<p>Ile masz lat?</p>
<input type="radio" name="Wiek" value="mniej niż 17" />mniej niż 17<br />
<input type="radio" name="Wiek" value="17-19" />17-19<br />
<input type="radio" name="Wiek" value="20-29" />20-29<br />
<input type="radio" name="Wiek" value="30-39" />30-39<br />
<input type="radio" name="Wiek" value="40-60" />40-60<br />
<input type="radio" name="Wiek" value="więcej niż 60" />więcej niż 60 

<p>Jakie lubisz samochody (możesz zaznaczyć więcej możliwości)?</p>
<input type="checkbox" name="Samochod" value="Terenowe" />Terenowe<br />
<input type="checkbox" name="Samochod" value="Sportowe" />Sportowe<br />
<input type="checkbox" name="Samochod" value="Inna" />Inna (podaj jaka):
<input name="Samochod" />

<p>Ile masz lat doświadczenia ?</p>
<select name="Doświadczenie">
	<option selected="selected">brak</option>
	<option>mniej niż rok</option>
	<option>2 lata</option>
	<option>więcej niż 2 lata</option>
</select>

<p>Jakie znasz języki (możesz wybrać kilka opcji trzymając klawisz Ctrl)?</p>
<select name="Języki" multiple="multiple" size="3">
	<option selected="selected"></option>
	<option>English</option>
	<option>Russian</option>
	<option>Spanish</option>
</select>

<p>Podaj swój komentarz:</p>
<textarea name="Komentarz" cols="50" rows="10">Proszę, wpisz tutaj jakiś komentarz...</textarea>
<br /><br /><br />

<input type="submit" value="Wyślij formularz" />

<input type="reset" value="Wyczyść dane" />
</div></form>


</body>
</html>