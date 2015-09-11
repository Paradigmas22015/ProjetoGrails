
<%@ page import="projetograils.Item" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-item" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="item.nome.label" default="Nome" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: itemInstance, field: "nome")}</td>
				
			</tr>
			<tr class="prop">
				<td valign="top" class="name"><g:message code="item.valor.label" default="Valor" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: itemInstance, field: "valor")}</td>
				
			</tr>
			<tr class="prop">
				<td valign="top" class="name"><g:message code="item.descricao.label" default="Descricao" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: itemInstance, field: "descricao")}</td>
				
			</tr>
			<tr class="prop">
				<td valign="top" class="name"><g:message code="item.categoria.label" default="Categoria" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: itemInstance, field: "categoria")}</td>
				
			</tr>
			<tr class="prop">
				<td valign="top" class="name"><g:message code="item.tamanho.label" default="Tamanho" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: itemInstance, field: "tamanho")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="item.guardaRoupas.label" default="Guarda Roupas" /></td>
				
				<td valign="top" class="value"><g:link controller="guardaRoupas" action="show" id="${itemInstance?.guardaRoupas?.id}">${itemInstance?.guardaRoupas?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
<%--			<tr class="prop">
				<td valign="top" class="name"><g:message code="item.imagem.label" default="Imagem" /></td>
				
			</tr>
--%>		
		
		
		
		</tbody>
	</table>
</section>

</body>

</html>
