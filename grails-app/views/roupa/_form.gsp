<%@ page import="projetograils.Roupa" %>



			<div class="control-group fieldcontain ${hasErrors(bean: roupaInstance, field: 'nome', 'error')} required">
				<label for="nome" class="control-label"><g:message code="roupa.nome.label" default="Nome" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="nome" maxlength="128" required="" value="${roupaInstance?.nome}"/>
					<span class="help-inline">${hasErrors(bean: roupaInstance, field: 'nome', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: roupaInstance, field: 'valor', 'error')} required">
				<label for="valor" class="control-label"><g:message code="roupa.valor.label" default="Valor" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="valor" step="any" required="" value="${roupaInstance.valor}"/>
					<span class="help-inline">${hasErrors(bean: roupaInstance, field: 'valor', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: roupaInstance, field: 'descricao', 'error')} ">
				<label for="descricao" class="control-label"><g:message code="roupa.descricao.label" default="Descricao" /></label>
				<div class="controls">
					<g:textArea name="descricao" cols="40" rows="5" maxlength="1000" value="${roupaInstance?.descricao}"/>
					<span class="help-inline">${hasErrors(bean: roupaInstance, field: 'descricao', 'error')}</span>
				</div>
			</div>

<%--			<div class="control-group fieldcontain ${hasErrors(bean: roupaInstance, field: 'imagem', 'error')} ">
				<label for="imagem" class="control-label"><g:message code="roupa.imagem.label" default="Imagem" /></label>
				<div class="controls">
					<input type="file" id="imagem" name="imagem" />
					<span class="help-inline">${hasErrors(bean: roupaInstance, field: 'imagem', 'error')}</span>
				</div>
			</div>
--%>
			<div class="control-group fieldcontain ${hasErrors(bean: roupaInstance, field: 'categoria', 'error')} ">
				<label for="categoria" class="control-label"><g:message code="roupa.categoria.label" default="Categoria" /></label>
				<div class="controls">
					<g:select name="categoria" from="${roupaInstance.constraints.categoria.inList}" value="${roupaInstance?.categoria}" valueMessagePrefix="roupa.categoria" noSelection="['': '']"/>
					<span class="help-inline">${hasErrors(bean: roupaInstance, field: 'categoria', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: roupaInstance, field: 'tamanho', 'error')} ">
				<label for="tamanho" class="control-label"><g:message code="roupa.tamanho.label" default="Tamanho" /></label>
				<div class="controls">
					<g:select name="tamanho" from="${roupaInstance.constraints.tamanho.inList}" value="${roupaInstance?.tamanho}" valueMessagePrefix="roupa.tamanho" noSelection="['': '']"/>
					<span class="help-inline">${hasErrors(bean: roupaInstance, field: 'tamanho', 'error')}</span>
				</div>
			</div>

<%--			<div class="control-group fieldcontain ${hasErrors(bean: roupaInstance, field: 'guardaRoupas', 'error')} required">
				<label for="guardaRoupas" class="control-label"><g:message code="roupa.guardaRoupas.label" default="Guarda Roupas" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="guardaRoupas" name="guardaRoupas.id" from="${projetograils.GuardaRoupas.list()}" optionKey="id" required="" value="${roupaInstance?.guardaRoupas?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: roupaInstance, field: 'guardaRoupas', 'error')}</span>
				</div>
			</div>
--%>
