<%@ page import="projetograils.Categoria" %>



			<div class="control-group fieldcontain ${hasErrors(bean: categoriaInstance, field: 'nome', 'error')} required">
				<label for="nome" class="control-label"><g:message code="categoria.nome.label" default="Nome" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="nome" from="${categoriaInstance.constraints.nome.inList}" required="" value="${categoriaInstance?.nome}" valueMessagePrefix="categoria.nome"/>
					<span class="help-inline">${hasErrors(bean: categoriaInstance, field: 'nome', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: categoriaInstance, field: 'itens', 'error')} ">
				<label for="itens" class="control-label"><g:message code="categoria.itens.label" default="Itens" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${categoriaInstance?.itens?}" var="i">
    <li><g:link controller="item" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="item" action="create" params="['categoria.id': categoriaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'item.label', default: 'Item')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: categoriaInstance, field: 'itens', 'error')}</span>
				</div>
			</div>

