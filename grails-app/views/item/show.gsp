
<%@ page import="projetograils.Item" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-item" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-item" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list item">
			
				<g:if test="${itemInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="item.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${itemInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.valor}">
				<li class="fieldcontain">
					<span id="valor-label" class="property-label"><g:message code="item.valor.label" default="Valor" /></span>
					
						<span class="property-value" aria-labelledby="valor-label"><g:fieldValue bean="${itemInstance}" field="valor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="item.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${itemInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.imagem}">
				<li class="fieldcontain">
					<span id="imagem-label" class="property-label"><g:message code="item.imagem.label" default="Imagem" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.categoria}">
				<li class="fieldcontain">
					<span id="categoria-label" class="property-label"><g:message code="item.categoria.label" default="Categoria" /></span>
					
						<span class="property-value" aria-labelledby="categoria-label"><g:fieldValue bean="${itemInstance}" field="categoria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.guardaRoupas}">
				<li class="fieldcontain">
					<span id="guardaRoupas-label" class="property-label"><g:message code="item.guardaRoupas.label" default="Guarda Roupas" /></span>
					
						<span class="property-value" aria-labelledby="guardaRoupas-label"><g:link controller="guardaRoupas" action="show" id="${itemInstance?.guardaRoupas?.id}">${itemInstance?.guardaRoupas?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.tamanho}">
				<li class="fieldcontain">
					<span id="tamanho-label" class="property-label"><g:message code="item.tamanho.label" default="Tamanho" /></span>
					
						<span class="property-value" aria-labelledby="tamanho-label"><g:fieldValue bean="${itemInstance}" field="tamanho"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${itemInstance?.id}" />
					<g:link class="edit" action="edit" id="${itemInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
