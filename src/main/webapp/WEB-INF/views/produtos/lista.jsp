<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Livros Java, Android, iPhone, PHP, Ruby e muito mais </title>
</head>
<body>

<h1>Lista de Produtos</h1>
	<div>${sucesso}</div>
	<table>
		<tr>
			<td>T�tulo Livro</td>
			<td>Descri��o</td>
			<td>P�ginas</td>
		</tr>
		<c:forEach items="${produtos}" var="produto">
		<tr>
   			<td>${produto.titulo }</td>
   			<td>${produto.descricao}</td>
   			<td>${produto.paginas}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>