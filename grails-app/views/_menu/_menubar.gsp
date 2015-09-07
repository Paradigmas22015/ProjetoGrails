<g:if test="${session.layout == null || session.layout == 'grid'}">
	<g:set var="menutype" value="nav nav-tabs" />
</g:if>
<g:elseif test="${session.layout == 'fluid'}">
	<g:set var="menutype" value="nav nav-tabs" />
</g:elseif>

<!-- position of menu: LTR (left-to-right, European) or RTL (right-to-left, Oriental) -->
<g:if test="${session.menuposition == 'right' && session.layout == 'grid'}">
	<g:set var="menuposition" value="pull-right" />
</g:if>
<g:elseif test="${session.menuposition == 'right' && session.layout == 'fluid'}">
	<g:set var="menuposition" value="tabbable tabs-right" /> <!-- pull-right -->
</g:elseif>
<g:elseif test="${session.layout == 'fluid'}">
	<g:set var="menuposition" value="tabbable tabs-left" /> <!-- pull-left -->
</g:elseif>
<g:else>
	<g:set var="menuposition" value="" />
</g:else>


<div class="${menuposition}">

  <div class="subnav">
    <ul class="nav nav-pills">
      <li><a href="/ProjetoGrails/">Início</a></li>
      <li><a href="/ProjetoGrails/item/list">Itens</a></li>
      <li><a href="/ProjetoGrails/guardaRoupas/list">Guarda-Roupas</a></li>
      <li><a href="/ProjetoGrails/roupa/list">Roupas</a></li>
      <li><a href="/ProjetoGrails/sapato/list">Sapatos</a></li>
      <li><a href="/ProjetoGrails/usuario/list">Perfil</a></li><!--Usuario pelo id = /ProjetoGrails/usuario/show/"user_id"-->
      <li><a href="/ProjetoGrails/logout/">Logout</a></li>
      <li><a href="/ProjetoGrails/auth/"></a>Login</li>
      <li><a href="/ProjetoGrails/usuario/create">Cadastre-se</a></li>
    </ul>
  </div>
</div>
