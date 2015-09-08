
<%@ page import="projetograils.Usuario" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-usuario" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="username" title="${message(code: 'usuario.username.label', default: 'Username')}" />
			
<%--				<g:sortableColumn property="password" title="${message(code: 'usuario.password.label', default: 'Password')}" />--%>
			
				<th><g:message code="usuario.guardaroupas.label" default="Guardaroupas" /></th>
			
				<g:sortableColumn property="nome" title="${message(code: 'usuario.nome.label', default: 'Nome')}" />
			
				<g:sortableColumn property="sobrenome" title="${message(code: 'usuario.sobrenome.label', default: 'Sobrenome')}" />
			
				<g:sortableColumn property="email" title="${message(code: 'usuario.email.label', default: 'Email')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${usuarioInstanceList}" status="i" var="usuarioInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${usuarioInstance.id}">${fieldValue(bean: usuarioInstance, field: "username")}</g:link></td>
			
<%--				<td>${fieldValue(bean: usuarioInstance, field: "password")}</td>
--%>
			
				<td>${fieldValue(bean: usuarioInstance, field: "guardaroupas")}</td>
			
				<td>${fieldValue(bean: usuarioInstance, field: "nome")}</td>
			
				<td>${fieldValue(bean: usuarioInstance, field: "sobrenome")}</td>
			
				<td>${fieldValue(bean: usuarioInstance, field: "email")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${usuarioInstanceTotal}" />
	</div>
</section>

</body>

</html>
