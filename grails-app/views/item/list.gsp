
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
			
				<g:sortableColumn property="nome" title="${message(code: 'item.nome.label', default: 'Nome')}" />
			
				<g:sortableColumn property="tamanho" title="${message(code: 'item.tamanho.label', default: 'Tamanho')}" />
			
				<g:sortableColumn property="valor" title="${message(code: 'item.valor.label', default: 'Valor')}" />
			
				<g:sortableColumn property="descricao" title="${message(code: 'item.descricao.label', default: 'Descricao')}" />
			
				<g:sortableColumn property="imagem" title="${message(code: 'item.imagem.label', default: 'Imagem')}" />
			
				<th><g:message code="item.categoria.label" default="Categoria" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${itemInstanceList}" status="i" var="itemInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${itemInstance.id}">${fieldValue(bean: itemInstance, field: "nome")}</g:link></td>
			
				<td>${fieldValue(bean: itemInstance, field: "tamanho")}</td>
			
				<td>${fieldValue(bean: itemInstance, field: "valor")}</td>
			
				<td>${fieldValue(bean: itemInstance, field: "descricao")}</td>
			
				<td>${fieldValue(bean: itemInstance, field: "imagem")}</td>
			
				<td>${fieldValue(bean: itemInstance, field: "categoria")}</td>
			
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
