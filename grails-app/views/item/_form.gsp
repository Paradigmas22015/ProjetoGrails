<%@ page import="projetograils.Item" %>



<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="item.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="128" required="" value="${itemInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'tamanho', 'error')} required">
	<label for="tamanho">
		<g:message code="item.tamanho.label" default="Tamanho" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tamanho" from="${itemInstance.constraints.tamanho.inList}" required="" value="${itemInstance?.tamanho}" valueMessagePrefix="item.tamanho"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="item.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: itemInstance, field: 'valor')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="item.descricao.label" default="Descricao" />
		
	</label>
	<g:textArea name="descricao" cols="40" rows="5" maxlength="1000" value="${itemInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'imagem', 'error')} ">
	<label for="imagem">
		<g:message code="item.imagem.label" default="Imagem" />
		
	</label>
	<input type="file" id="imagem" name="imagem" />
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'categoria', 'error')} required">
	<label for="categoria">
		<g:message code="item.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="categoria" name="categoria.id" from="${projetograils.Categoria.list()}" optionKey="id" required="" value="${itemInstance?.categoria?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'guardaRoupas', 'error')} required">
	<label for="guardaRoupas">
		<g:message code="item.guardaRoupas.label" default="Guarda Roupas" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="guardaRoupas" name="guardaRoupas.id" from="${projetograils.GuardaRoupas.list()}" optionKey="id" required="" value="${itemInstance?.guardaRoupas?.id}" class="many-to-one"/>
</div>

