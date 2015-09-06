<%@ page import="projetograils.GuardaRoupas" %>



			<div class="control-group fieldcontain ${hasErrors(bean: guardaRoupasInstance, field: 'nome', 'error')} required">
				<label for="nome" class="control-label"><g:message code="guardaRoupas.nome.label" default="Nome" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="nome" maxlength="32" required="" value="${guardaRoupasInstance?.nome}"/>
					<span class="help-inline">${hasErrors(bean: guardaRoupasInstance, field: 'nome', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: guardaRoupasInstance, field: 'itens', 'error')} ">
				<label for="itens" class="control-label"><g:message code="guardaRoupas.itens.label" default="Itens" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${guardaRoupasInstance?.itens?}" var="i">
    <li><g:link controller="item" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="item" action="create" params="['guardaRoupas.id': guardaRoupasInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'item.label', default: 'Item')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: guardaRoupasInstance, field: 'itens', 'error')}</span>
				</div>
			</div>

