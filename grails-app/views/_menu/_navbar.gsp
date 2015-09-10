<div id="Navbar" class="navbar navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<!-- .btn-navbar is used as the toggle for collapsed navbar content -->
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
            	<span class="icon-bar"></span>
            	<span class="icon-bar"></span>
			</a>
			<a class="brand" href="${createLink(uri: '/')}">
				<img class="logo" src=http://localhost:8080/ProjetoGrails/less/img/logo.png />
				Guarda Tudo
			</a>
<%-- 
       		<div class="nav-collapse">
       		
       			<ul class="nav">
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Browse <b class="caret"></b></a>
						<ul class="dropdown-menu">
		                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
		                    <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName.substring(c.fullName.lastIndexOf('.')+1)}</g:link></li>
		                    </g:each>
						</ul>
					</li>
				</ul>
--%>
	  			<div class="pull-left">
					<%--Left-side entries--%>
	  			</div>
												
<%-- 						<g:render template="/_menu/config"/>
					<g:render template="/_menu/info"/>														
					<g:render template="/_menu/user"/><!-- NOTE: the renderDialog for the "Register" modal dialog MUST be placed outside the NavBar (at least for Bootstrap 2.1.1): see bottom of main.gsp -->
					<g:render template="/_menu/admin"/>--%>														
		<div class="pull-right">			
					<form class="navbar-search pull-left" action="/ProjetoGrails/searchable" method="get" id="searchableForm" name="searchableForm">
        <input  class="search-query span2" name="q" value="Procure itens" size="50" id="q" type="text"> <input class="btn btn-inverse btn-small"  value="Procurar" type="submit">
    </form>
	  			</div>

			</div>
</div>
			
		</div>
	</div>
</div>
