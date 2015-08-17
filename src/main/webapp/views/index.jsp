<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<div class="page-header">
	<h1>Welcome, <sec:authentication property="name"/>!</h1>
</div>
<p class="lead">Feel free to browse in the menu options of this
	responsive web application.</p>
<p>
	Visit the <a href="http://codeonblue.com.br">Code On Blue portal</a>
	for more information about our work.
</p>
<p>
	<a class="btn btn-warning" href="j_spring_security_logout">Logout >></a>	
</p>