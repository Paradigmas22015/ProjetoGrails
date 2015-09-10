
<%@ page import="projetograils.GuardaRoupas" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'guardaRoupas.label', default: 'GuardaRoupas')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>
<font color="black">

<section id="show-guardaRoupas" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="guardaRoupas.nome.label" default="Nome" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: guardaRoupasInstance, field: "nome")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="guardaRoupas.dono.label" default="Dono" /></td>
				
				<td valign="top" class="value"><g:link controller="usuario" action="show" id="${guardaRoupasInstance?.dono?.id}">${guardaRoupasInstance?.dono?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="guardaRoupas.itens.label" default="Itens" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${guardaRoupasInstance.itens}" var="i">
						<li><g:link controller="item" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
		</tbody>
	</table>
</section>
</font>
</body>

</html>
