<%@ page import="projetograils.Sapato" %>



			<div class="control-group fieldcontain ${hasErrors(bean: sapatoInstance, field: 'nome', 'error')} required">
				<label for="nome" class="control-label"><g:message code="sapato.nome.label" default="Nome" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="nome" maxlength="128" required="" value="${sapatoInstance?.nome}"/>
					<span class="help-inline">${hasErrors(bean: sapatoInstance, field: 'nome', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: sapatoInstance, field: 'valor', 'error')} required">
				<label for="valor" class="control-label"><g:message code="sapato.valor.label" default="Valor" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="valor" step="any" required="" value="${sapatoInstance.valor}"/>
					<span class="help-inline">${hasErrors(bean: sapatoInstance, field: 'valor', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: sapatoInstance, field: 'descricao', 'error')} ">
				<label for="descricao" class="control-label"><g:message code="sapato.descricao.label" default="Descricao" /></label>
				<div class="controls">
					<g:textArea name="descricao" cols="40" rows="5" maxlength="1000" value="${sapatoInstance?.descricao}"/>
					<span class="help-inline">${hasErrors(bean: sapatoInstance, field: 'descricao', 'error')}</span>
				</div>
			</div>

<%--			<div class="control-group fieldcontain ${hasErrors(bean: sapatoInstance, field: 'imagem', 'error')} ">
				<label for="imagem" class="control-label"><g:message code="sapato.imagem.label" default="Imagem" /></label>
				<div class="controls">
					<input type="file" id="imagem" name="imagem" />
					<span class="help-inline">${hasErrors(bean: sapatoInstance, field: 'imagem', 'error')}</span>
				</div>
			</div>
--%>
			<div class="control-group fieldcontain ${hasErrors(bean: sapatoInstance, field: 'categoria', 'error')} ">
				<label for="categoria" class="control-label"><g:message code="sapato.categoria.label" default="Categoria" /></label>
				<div class="controls">
					<g:select name="categoria" from="${sapatoInstance.constraints.categoria.inList}" value="${sapatoInstance?.categoria}" valueMessagePrefix="sapato.categoria" noSelection="['': '']"/>
					<span class="help-inline">${hasErrors(bean: sapatoInstance, field: 'categoria', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: sapatoInstance, field: 'tamanho', 'error')} ">
				<label for="tamanho" class="control-label"><g:message code="sapato.tamanho.label" default="Tamanho" /></label>
				<div class="controls">
					<g:select name="tamanho" from="${sapatoInstance.constraints.tamanho.inList}" value="${sapatoInstance?.tamanho}" valueMessagePrefix="sapato.tamanho" noSelection="['': '']"/>
					<span class="help-inline">${hasErrors(bean: sapatoInstance, field: 'tamanho', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: sapatoInstance, field: 'guardaRoupas', 'error')} required">
				<label for="guardaRoupas" class="control-label"><g:message code="sapato.guardaRoupas.label" default="Guarda Roupas" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="guardaRoupas" name="guardaRoupas.id" from="${projetograils.GuardaRoupas.list()}" optionKey="id" required="" value="${sapatoInstance?.guardaRoupas?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: sapatoInstance, field: 'guardaRoupas', 'error')}</span>
				</div>
			</div>

