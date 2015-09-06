
<%@ page import="projetograils.Categoria" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-categoria" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="categoria.nome.label" default="Nome" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: categoriaInstance, field: "nome")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="categoria.itens.label" default="Itens" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${categoriaInstance.itens}" var="i">
						<li><g:link controller="item" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
