<%@ page import="projetograils.Item" %>



			<div class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'categoria', 'error')} ">
				<label for="categoria" class="control-label"><g:message code="item.categoria.label" default="Categoria" /></label>
				<div class="controls">
					<g:textField name="categoria" value="${itemInstance?.categoria}"/>
					<span class="help-inline">${hasErrors(bean: itemInstance, field: 'categoria', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'descricao', 'error')} ">
				<label for="descricao" class="control-label"><g:message code="item.descricao.label" default="Descricao" /></label>
				<div class="controls">
					<g:textField name="descricao" value="${itemInstance?.descricao}"/>
					<span class="help-inline">${hasErrors(bean: itemInstance, field: 'descricao', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'guardaRoupas', 'error')} required">
				<label for="guardaRoupas" class="control-label"><g:message code="item.guardaRoupas.label" default="Guarda Roupas" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="guardaRoupas" name="guardaRoupas.id" from="${projetograils.GuardaRoupas.list()}" optionKey="id" required="" value="${itemInstance?.guardaRoupas?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: itemInstance, field: 'guardaRoupas', 'error')}</span>
				</div>
			</div>

<%--			<div class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'imagem', 'error')} required">
				<label for="imagem" class="control-label"><g:message code="item.imagem.label" default="Imagem" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<input type="file" id="imagem" name="imagem" />
					<span class="help-inline">${hasErrors(bean: itemInstance, field: 'imagem', 'error')}</span>
				</div>
			</div>
--%>
			<div class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'nome', 'error')} ">
				<label for="nome" class="control-label"><g:message code="item.nome.label" default="Nome" /></label>
				<div class="controls">
					<g:textField name="nome" value="${itemInstance?.nome}"/>
					<span class="help-inline">${hasErrors(bean: itemInstance, field: 'nome', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: itemInstance, field: 'tamanho', 'error')} ">
				<label for="tamanho" class="control-label"><g:message code="item.tamanho.label" default="Tamanho" /></label>
				<div class="controls">
					<g:textField name="tamanho" value="${itemInstance?.tamanho}"/>
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

