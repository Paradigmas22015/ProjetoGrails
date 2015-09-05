<%@ page import="projetograils.Sapato" %>



<div class="fieldcontain ${hasErrors(bean: sapatoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="sapato.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="128" required="" value="${sapatoInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sapatoInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="sapato.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: sapatoInstance, field: 'valor')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: sapatoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="sapato.descricao.label" default="Descricao" />
		
	</label>
	<g:textArea name="descricao" cols="40" rows="5" maxlength="1000" value="${sapatoInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sapatoInstance, field: 'imagem', 'error')} ">
	<label for="imagem">
		<g:message code="sapato.imagem.label" default="Imagem" />
		
	</label>
	<input type="file" id="imagem" name="imagem" />
</div>

<div class="fieldcontain ${hasErrors(bean: sapatoInstance, field: 'categoria', 'error')} ">
	<label for="categoria">
		<g:message code="sapato.categoria.label" default="Categoria" />
		
	</label>
	<g:select name="categoria" from="${sapatoInstance.constraints.categoria.inList}" value="${sapatoInstance?.categoria}" valueMessagePrefix="sapato.categoria" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sapatoInstance, field: 'tamanho', 'error')} ">
	<label for="tamanho">
		<g:message code="sapato.tamanho.label" default="Tamanho" />
		
	</label>
	<g:select name="tamanho" from="${sapatoInstance.constraints.tamanho.inList}" value="${sapatoInstance?.tamanho}" valueMessagePrefix="sapato.tamanho" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sapatoInstance, field: 'guardaRoupas', 'error')} required">
	<label for="guardaRoupas">
		<g:message code="sapato.guardaRoupas.label" default="Guarda Roupas" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="guardaRoupas" name="guardaRoupas.id" from="${projetograils.GuardaRoupas.list()}" optionKey="id" required="" value="${sapatoInstance?.guardaRoupas?.id}" class="many-to-one"/>
</div>

