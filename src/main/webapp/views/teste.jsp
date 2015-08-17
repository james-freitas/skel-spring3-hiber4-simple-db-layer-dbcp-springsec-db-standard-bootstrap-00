<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="page-header">
	<h1>Welcome!</h1>
</div>
	<h3>Serviços</h3>
	<ul>
		<c:forEach items="${servicos}" var="servico">
			<li>${servico.descricao} - ${servico.preco}</li>
		</c:forEach>
	</ul>




