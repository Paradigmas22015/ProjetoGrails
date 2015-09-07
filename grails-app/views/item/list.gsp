
<%@ page import="projetograils.Item" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-item" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="categoria" title="${message(code: 'item.categoria.label', default: 'Categoria')}" />
			
				<g:sortableColumn property="descricao" title="${message(code: 'item.descricao.label', default: 'Descricao')}" />
			
				<th><g:message code="item.guardaRoupas.label" default="Guarda Roupas" /></th>
			
				<g:sortableColumn property="imagem" title="${message(code: 'item.imagem.label', default: 'Imagem')}" />
			
				<g:sortableColumn property="nome" title="${message(code: 'item.nome.label', default: 'Nome')}" />
			
				<g:sortableColumn property="tamanho" title="${message(code: 'item.tamanho.label', default: 'Tamanho')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${itemInstanceList}" status="i" var="itemInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${itemInstance.id}">${fieldValue(bean: itemInstance, field: "categoria")}</g:link></td>
			
				<td>${fieldValue(bean: itemInstance, field: "descricao")}</td>
			
				<td>${fieldValue(bean: itemInstance, field: "guardaRoupas")}</td>
			
				<td>${fieldValue(bean: itemInstance, field: "imagem")}</td>
			
				<td>${fieldValue(bean: itemInstance, field: "nome")}</td>
			
				<td>${fieldValue(bean: itemInstance, field: "tamanho")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${itemInstanceTotal}" />
	</div>
</section>

</body>

</html>
