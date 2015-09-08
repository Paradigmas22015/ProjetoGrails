
<%@ page import="projetograils.Roupa" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'roupa.label', default: 'Roupa')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-roupa" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="roupa.nome.label" default="Nome" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: roupaInstance, field: "nome")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="roupa.valor.label" default="Valor" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: roupaInstance, field: "valor")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="roupa.descricao.label" default="Descricao" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: roupaInstance, field: "descricao")}</td>
				
			</tr>
		
<%--			<tr class="prop">
				<td valign="top" class="name"><g:message code="roupa.imagem.label" default="Imagem" /></td>
				
			</tr>
--%>		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="roupa.categoria.label" default="Categoria" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: roupaInstance, field: "categoria")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="roupa.tamanho.label" default="Tamanho" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: roupaInstance, field: "tamanho")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="roupa.guardaRoupas.label" default="Guarda Roupas" /></td>
				
				<td valign="top" class="value"><g:link controller="guardaRoupas" action="show" id="${roupaInstance?.guardaRoupas?.id}">${roupaInstance?.guardaRoupas?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
