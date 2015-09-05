
<%@ page import="projetograils.Roupa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'roupa.label', default: 'Roupa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-roupa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-roupa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'roupa.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="valor" title="${message(code: 'roupa.valor.label', default: 'Valor')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'roupa.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="imagem" title="${message(code: 'roupa.imagem.label', default: 'Imagem')}" />
					
						<g:sortableColumn property="categoria" title="${message(code: 'roupa.categoria.label', default: 'Categoria')}" />
					
						<g:sortableColumn property="tamanho" title="${message(code: 'roupa.tamanho.label', default: 'Tamanho')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${roupaInstanceList}" status="i" var="roupaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${roupaInstance.id}">${fieldValue(bean: roupaInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: roupaInstance, field: "valor")}</td>
					
						<td>${fieldValue(bean: roupaInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: roupaInstance, field: "imagem")}</td>
					
						<td>${fieldValue(bean: roupaInstance, field: "categoria")}</td>
					
						<td>${fieldValue(bean: roupaInstance, field: "tamanho")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${roupaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
