
<%@ page import="projetograils.Sapato" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'sapato.label', default: 'Sapato')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-sapato" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
<%--				<g:sortableColumn property="imagem" title="${message(code: 'sapato.imagem.label', default: 'Imagem')}" />
--%>			
				<g:sortableColumn property="nome" title="${message(code: 'sapato.nome.label', default: 'Nome')}" />
			
				<g:sortableColumn property="valor" title="${message(code: 'sapato.valor.label', default: 'Valor')}" />
			
				<g:sortableColumn property="descricao" title="${message(code: 'sapato.descricao.label', default: 'Descricao')}" />
			
				<g:sortableColumn property="categoria" title="${message(code: 'sapato.categoria.label', default: 'Categoria')}" />
			
				<g:sortableColumn property="tamanho" title="${message(code: 'sapato.tamanho.label', default: 'Tamanho')}" />

				<th><g:message code="sapato.guardaRoupas.dono.label" default="Vendedor" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${sapatoInstanceList}" status="i" var="sapatoInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
<%--				<td>${fieldValue(bean: sapatoInstance, field: "imagem")}</td>
--%>			
				<td><g:link action="show" id="${sapatoInstance.id}">${fieldValue(bean: sapatoInstance, field: "nome")}</g:link></td>
			
				<td>${fieldValue(bean: sapatoInstance, field: "valor")}</td>
			
				<td>${fieldValue(bean: sapatoInstance, field: "descricao")}</td>
			
			
				<td>${fieldValue(bean: sapatoInstance, field: "categoria")}</td>
			
				<td>${fieldValue(bean: sapatoInstance, field: "tamanho")}</td>

				<td>${fieldValue(bean: itemInstance, field: "guardaRoupas.dono")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${sapatoInstanceTotal}" />
	</div>
</section>

</body>

</html>
