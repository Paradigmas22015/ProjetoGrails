<%@ page import="projetograils.GuardaRoupas" %>



<div class="fieldcontain ${hasErrors(bean: guardaRoupasInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="guardaRoupas.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="32" required="" value="${guardaRoupasInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: guardaRoupasInstance, field: 'itens', 'error')} ">
	<label for="itens">
		<g:message code="guardaRoupas.itens.label" default="Itens" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${guardaRoupasInstance?.itens?}" var="i">
    <li><g:link controller="item" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="item" action="create" params="['guardaRoupas.id': guardaRoupasInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'item.label', default: 'Item')])}</g:link>
</li>
</ul>

</div>

