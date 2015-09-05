<%@ page import="projetograils.Item" %>



<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'categoria', 'error')} ">
	<label for="categoria">
		<g:message code="item.categoria.label" default="Categoria" />
		
	</label>
	<g:textField name="categoria" value="${itemInstance?.categoria}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="item.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${itemInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'guardaRoupas', 'error')} required">
	<label for="guardaRoupas">
		<g:message code="item.guardaRoupas.label" default="Guarda Roupas" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="guardaRoupas" name="guardaRoupas.id" from="${projetograils.GuardaRoupas.list()}" optionKey="id" required="" value="${itemInstance?.guardaRoupas?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'imagem', 'error')} required">
	<label for="imagem">
		<g:message code="item.imagem.label" default="Imagem" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="imagem" name="imagem" />
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="item.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${itemInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'tamanho', 'error')} ">
	<label for="tamanho">
		<g:message code="item.tamanho.label" default="Tamanho" />
		
	</label>
	<g:textField name="tamanho" value="${itemInstance?.tamanho}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="item.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: itemInstance, field: 'valor')}" required=""/>
</div>

