<%@ page import="projetograils.Item" %>



			<div class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'nome', 'error')} required">
				<label for="nome" class="control-label"><g:message code="item.nome.label" default="Nome" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="nome" maxlength="128" required="" value="${itemInstance?.nome}"/>
					<span class="help-inline">${hasErrors(bean: itemInstance, field: 'nome', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'tamanho', 'error')} required">
				<label for="tamanho" class="control-label"><g:message code="item.tamanho.label" default="Tamanho" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="tamanho" from="${itemInstance.constraints.tamanho.inList}" required="" value="${itemInstance?.tamanho}" valueMessagePrefix="item.tamanho"/>
					<span class="help-inline">${hasErrors(bean: itemInstance, field: 'tamanho', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'valor', 'error')} required">
				<label for="valor" class="control-label"><g:message code="item.valor.label" default="Valor" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="valor" step="any" required="" value="${itemInstance.valor}"/>
					<span class="help-inline">${hasErrors(bean: itemInstance, field: 'valor', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'descricao', 'error')} ">
				<label for="descricao" class="control-label"><g:message code="item.descricao.label" default="Descricao" /></label>
				<div class="controls">
					<g:textArea name="descricao" cols="40" rows="5" maxlength="1000" value="${itemInstance?.descricao}"/>
					<span class="help-inline">${hasErrors(bean: itemInstance, field: 'descricao', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'imagem', 'error')} ">
				<label for="imagem" class="control-label"><g:message code="item.imagem.label" default="Imagem" /></label>
				<div class="controls">
					<input type="file" id="imagem" name="imagem" />
					<span class="help-inline">${hasErrors(bean: itemInstance, field: 'imagem', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'categoria', 'error')} required">
				<label for="categoria" class="control-label"><g:message code="item.categoria.label" default="Categoria" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="categoria" name="categoria.id" from="${projetograils.Categoria.list()}" optionKey="id" required="" value="${itemInstance?.categoria?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: itemInstance, field: 'categoria', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'guardaRoupas', 'error')} required">
				<label for="guardaRoupas" class="control-label"><g:message code="item.guardaRoupas.label" default="Guarda Roupas" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="guardaRoupas" name="guardaRoupas.id" from="${projetograils.GuardaRoupas.list()}" optionKey="id" required="" value="${itemInstance?.guardaRoupas?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: itemInstance, field: 'guardaRoupas', 'error')}</span>
				</div>
			</div>

