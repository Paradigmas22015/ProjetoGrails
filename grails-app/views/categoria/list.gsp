
<%@ page import="projetograils.Categoria" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-categoria" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="nome" title="${message(code: 'categoria.nome.label', default: 'Nome')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${categoriaInstanceList}" status="i" var="categoriaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${categoriaInstance.id}">${fieldValue(bean: categoriaInstance, field: "nome")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${categoriaInstanceTotal}" />
	</div>
</section>

</body>

</html>
