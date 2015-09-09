
<%@ page import="projetograils.GuardaRoupas" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'guardaRoupas.label', default: 'GuardaRoupas')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-guardaRoupas" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="nome" title="${message(code: 'guardaRoupas.nome.label', default: 'Nome')}" />
			
				<%--<th><g:message code="guardaRoupas.dono.label" default="Dono" /></th>
				--%>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${guardaRoupasInstanceList}" status="i" var="guardaRoupasInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${guardaRoupasInstance.id}">${fieldValue(bean: guardaRoupasInstance, field: "nome")}</g:link></td>
			
				<%-- <td>${fieldValue(bean: guardaRoupasInstance, field: "dono")}</td>
				--%>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<%--<div class="pagination">
		<bs:paginate total="${guardaRoupasInstanceTotal}" />
	</div>
	--%>
</section>

</body>

</html>
