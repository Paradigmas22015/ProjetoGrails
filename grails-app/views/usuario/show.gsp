
<%@ page import="projetograils.Usuario" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-usuario" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="usuario.nome.label" default="Nome" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: usuarioInstance, field: "nome")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="usuario.sobrenome.label" default="Sobrenome" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: usuarioInstance, field: "sobrenome")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="usuario.username.label" default="Username" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: usuarioInstance, field: "username")}</td>
				
			</tr>

			<tr class="prop">
				<td valign="top" class="name"><g:message code="usuario.email.label" default="E-mail" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: usuarioInstance, field: "email")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="usuario.telefone.label" default="Telefone" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: usuarioInstance, field: "telefone")}</td>
				
			</tr>
		
<%--			<tr class="prop">
				<td valign="top" class="name"><g:message code="usuario.password.label" default="Password" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: usuarioInstance, field: "password")}</td>
				
			</tr>
--%>		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="usuario.guardaroupas.label" default="Guarda-Roupas" /></td>
				
				<td valign="top" class="value">
				<g:if test="${projetograils.GuardaRoupas.findByDono(usuarioInstance) == null}">
					<a href="/ProjetoGrails/guardaRoupas/create">Crie seu Guarda-Roupas</a></p>
				</g:if>
				<g:else>
					<g:link controller="guardaRoupas" action="show" id="${projetograils.GuardaRoupas.findByDono(usuarioInstance)}">${projetograils.GuardaRoupas.findByDono(usuarioInstance).encodeAsHTML()}</g:link></td>
				</g:else>
			</tr>
<%--		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="usuario.accountExpired.label" default="Account Expired" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${usuarioInstance?.accountExpired}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="usuario.accountLocked.label" default="Account Locked" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${usuarioInstance?.accountLocked}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="usuario.enabled.label" default="Enabled" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${usuarioInstance?.enabled}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="usuario.passwordExpired.label" default="Password Expired" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${usuarioInstance?.passwordExpired}" /></td>
				
			</tr>
--%>
		</tbody>
	</table>
</section>

</body>

</html>
