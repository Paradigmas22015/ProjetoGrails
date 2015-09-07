
<%@ page import="projetograils.Sapato" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'sapato.label', default: 'Sapato')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-sapato" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="sapato.nome.label" default="Nome" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: sapatoInstance, field: "nome")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="sapato.valor.label" default="Valor" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: sapatoInstance, field: "valor")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="sapato.descricao.label" default="Descricao" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: sapatoInstance, field: "descricao")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="sapato.imagem.label" default="Imagem" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="sapato.categoria.label" default="Categoria" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: sapatoInstance, field: "categoria")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="sapato.tamanho.label" default="Tamanho" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: sapatoInstance, field: "tamanho")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="sapato.guardaRoupas.label" default="Guarda Roupas" /></td>
				
				<td valign="top" class="value"><g:link controller="guardaRoupas" action="show" id="${sapatoInstance?.guardaRoupas?.id}">${sapatoInstance?.guardaRoupas?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
