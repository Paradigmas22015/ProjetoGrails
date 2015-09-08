<%@ page import="projetograils.Item" %>
<body>
	
<section id="list-item" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="imagem" title="${message(code: 'item.imagem.label', default: 'Imagem')}" />

				<g:sortableColumn property="nome" title="${message(code: 'item.nome.label', default: 'Nome')}" />

				<g:sortableColumn property="valor" title="${message(code: 'item.valor.label', default: 'Valor')}" />


				<g:sortableColumn property="descricao" title="${message(code: 'item.descricao.label', default: 'Descricao')}" />

				<g:sortableColumn property="categoria" title="${message(code: 'item.categoria.label', default: 'Categoria')}" />
			
				<g:sortableColumn property="tamanho" title="${message(code: 'item.tamanho.label', default: 'Tamanho')}" />
			
				<th><g:message code="item.guardaRoupas.dono.label" default="Vendedor" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${itemInstanceList}" status="i" var="itemInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td>${fieldValue(bean: itemInstance, field: "imagem")}</td>
			
				<td>${fieldValue(bean: itemInstance, field: "nome")}</td>

				<td>${fieldValue(bean: itemInstance, field: "valor")}</td>

				<td>${fieldValue(bean: itemInstance, field: "descricao")}</td>

				<td><g:link action="show" id="${itemInstance.id}">${fieldValue(bean: itemInstance, field: "categoria")}</g:link></td>
			
				<td>${fieldValue(bean: itemInstance, field: "tamanho")}</td>

				<td>${fieldValue(bean: itemInstance, field: "guardaRoupas.dono")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
</section>

</body>
