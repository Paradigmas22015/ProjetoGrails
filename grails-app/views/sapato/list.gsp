
<%@ page import="projetograils.Sapato" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sapato.label', default: 'Sapato')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sapato" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sapato" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'sapato.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="valor" title="${message(code: 'sapato.valor.label', default: 'Valor')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'sapato.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="imagem" title="${message(code: 'sapato.imagem.label', default: 'Imagem')}" />
					
						<g:sortableColumn property="categoria" title="${message(code: 'sapato.categoria.label', default: 'Categoria')}" />
					
						<g:sortableColumn property="tamanho" title="${message(code: 'sapato.tamanho.label', default: 'Tamanho')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sapatoInstanceList}" status="i" var="sapatoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sapatoInstance.id}">${fieldValue(bean: sapatoInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: sapatoInstance, field: "valor")}</td>
					
						<td>${fieldValue(bean: sapatoInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: sapatoInstance, field: "imagem")}</td>
					
						<td>${fieldValue(bean: sapatoInstance, field: "categoria")}</td>
					
						<td>${fieldValue(bean: sapatoInstance, field: "tamanho")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sapatoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
