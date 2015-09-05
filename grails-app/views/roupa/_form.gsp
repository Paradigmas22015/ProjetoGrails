<%@ page import="projetograils.Roupa" %>



<div class="fieldcontain ${hasErrors(bean: roupaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="roupa.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="128" required="" value="${roupaInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roupaInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="roupa.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: roupaInstance, field: 'valor')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: roupaInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="roupa.descricao.label" default="Descricao" />
		
	</label>
	<g:textArea name="descricao" cols="40" rows="5" maxlength="1000" value="${roupaInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roupaInstance, field: 'imagem', 'error')} ">
	<label for="imagem">
		<g:message code="roupa.imagem.label" default="Imagem" />
		
	</label>
	<input type="file" id="imagem" name="imagem" />
</div>

<div class="fieldcontain ${hasErrors(bean: roupaInstance, field: 'categoria', 'error')} ">
	<label for="categoria">
		<g:message code="roupa.categoria.label" default="Categoria" />
		
	</label>
	<g:select name="categoria" from="${roupaInstance.constraints.categoria.inList}" value="${roupaInstance?.categoria}" valueMessagePrefix="roupa.categoria" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roupaInstance, field: 'tamanho', 'error')} ">
	<label for="tamanho">
		<g:message code="roupa.tamanho.label" default="Tamanho" />
		
	</label>
	<g:select name="tamanho" from="${roupaInstance.constraints.tamanho.inList}" value="${roupaInstance?.tamanho}" valueMessagePrefix="roupa.tamanho" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roupaInstance, field: 'guardaRoupas', 'error')} required">
	<label for="guardaRoupas">
		<g:message code="roupa.guardaRoupas.label" default="Guarda Roupas" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="guardaRoupas" name="guardaRoupas.id" from="${projetograils.GuardaRoupas.list()}" optionKey="id" required="" value="${roupaInstance?.guardaRoupas?.id}" class="many-to-one"/>
</div>

