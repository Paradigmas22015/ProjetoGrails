
<%@ page import="projetograils.Roupa" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'roupa.label', default: 'Roupa')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
<font color="black">	
<section id="list-roupa" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
<%--				<g:sortableColumn property="imagem" title="${message(code: 'roupa.imagem.label', default: 'Imagem')}" />
--%>
				<g:sortableColumn property="nome" title="${message(code: 'roupa.nome.label', default: 'Nome')}" />
			
				<g:sortableColumn property="valor" title="${message(code: 'roupa.valor.label', default: 'Valor')}" />
			
				<g:sortableColumn property="descricao" title="${message(code: 'roupa.descricao.label', default: 'Descricao')}" />
			
				<g:sortableColumn property="categoria" title="${message(code: 'roupa.categoria.label', default: 'Categoria')}" />
			
				<g:sortableColumn property="tamanho" title="${message(code: 'roupa.tamanho.label', default: 'Tamanho')}" />

				<th><g:message code="roupa.guardaRoupas.dono.label" default="Vendedor" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${roupaInstanceList}" status="i" var="roupaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
<%--				<td>${fieldValue(bean: roupaInstance, field: "imagem")}</td>
--%>
				<td><g:link action="show" id="${roupaInstance.id}">${fieldValue(bean: roupaInstance, field: "nome")}</g:link></td>
			
				<td>${fieldValue(bean: roupaInstance, field: "valor")}</td>
			
				<td>${fieldValue(bean: roupaInstance, field: "descricao")}</td>
			
				<td>${fieldValue(bean: roupaInstance, field: "categoria")}</td>
			
				<td>${fieldValue(bean: roupaInstance, field: "tamanho")}</td>

				<td>${fieldValue(bean: itemInstance, field: "guardaRoupas.dono")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${roupaInstanceTotal}" />
	</div>
</section>
</font>
</body>

</html>
