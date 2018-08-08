<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Livros Java, Android, iPhone, PHP, Ruby e muito mais </title>
</head>
<body>
	<form action="/projetoJboss/produtos" method="POST">
		<div>
			<label>T�tulo</label>
			<input type="text" name="titulo">
			<form:errors path="produto.titulo"/>
		</div>
		<div>
			<label>Descri��o</label>
			<textarea rows= "10" cols="20" name="descricao"></textarea>
				<form:errors path="produto.descricao"/>
		</div>
		<div>
			<label>P�ginas</label>
			<input type="text" name="paginas">
				<form:errors path="produto.paginas"/>
		</div>
		
	<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
			<div>
				<label>${tipoPreco}</label>
				<input type="text" name="precos[${status.index}].valor" />
				<input type="hidden" name="precos[${status.index}].tipo" value="${tipoPreco}"/>
			</div>
		</c:forEach>
			<button type="submit">Cadastrar</button>
	</form>
</body>
</html>