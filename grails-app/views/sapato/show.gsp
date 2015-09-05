
<%@ page import="projetograils.Sapato" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sapato.label', default: 'Sapato')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-sapato" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-sapato" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list sapato">
			
				<g:if test="${sapatoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="sapato.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${sapatoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sapatoInstance?.valor}">
				<li class="fieldcontain">
					<span id="valor-label" class="property-label"><g:message code="sapato.valor.label" default="Valor" /></span>
					
						<span class="property-value" aria-labelledby="valor-label"><g:fieldValue bean="${sapatoInstance}" field="valor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sapatoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="sapato.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${sapatoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sapatoInstance?.imagem}">
				<li class="fieldcontain">
					<span id="imagem-label" class="property-label"><g:message code="sapato.imagem.label" default="Imagem" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sapatoInstance?.categoria}">
				<li class="fieldcontain">
					<span id="categoria-label" class="property-label"><g:message code="sapato.categoria.label" default="Categoria" /></span>
					
						<span class="property-value" aria-labelledby="categoria-label"><g:fieldValue bean="${sapatoInstance}" field="categoria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sapatoInstance?.tamanho}">
				<li class="fieldcontain">
					<span id="tamanho-label" class="property-label"><g:message code="sapato.tamanho.label" default="Tamanho" /></span>
					
						<span class="property-value" aria-labelledby="tamanho-label"><g:fieldValue bean="${sapatoInstance}" field="tamanho"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sapatoInstance?.guardaRoupas}">
				<li class="fieldcontain">
					<span id="guardaRoupas-label" class="property-label"><g:message code="sapato.guardaRoupas.label" default="Guarda Roupas" /></span>
					
						<span class="property-value" aria-labelledby="guardaRoupas-label"><g:link controller="guardaRoupas" action="show" id="${sapatoInstance?.guardaRoupas?.id}">${sapatoInstance?.guardaRoupas?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${sapatoInstance?.id}" />
					<g:link class="edit" action="edit" id="${sapatoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
