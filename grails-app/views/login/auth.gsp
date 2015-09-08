<html>
<head>
	<title><g:message code="springSecurity.login.title"/></title>

    <meta name="layout" content="kickstart" />
<style>
.center {
    margin: auto;
    width: 60%;
    border:px solid #AD1D28;
    padding: 10px;
}
</style>
</head>

<body>

<div class="center">
	<div id='login'>
		<div class='inner'>

			<g:if test='${flash.message}'>
				<div class='login_message'>${flash.message}</div>
			</g:if>

			<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
				<p>
					<label for='username'>Usuário:</label>
					<input type='text' name='j_username' id='username'/>
				</p>

				<p>
					<label for='password'>Senha:</label>
					<input type='password' name='j_password' id='password'/>
				</p>

				<p id="remember_me_holder">
					<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
					<label for='remember_me'>Lembre-me</label>
				</p>

				<p>
					<input type='submit'  class="btn btn-primary" id="submit" value='Entrar'/>
				</p>
			</form>
		</div>
	</div>
</div>

<script type='text/javascript'>
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
</script>
</body>
</html>
