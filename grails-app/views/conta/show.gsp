
<%@ page import="bancocjp2.Conta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'conta.label', default: 'Conta')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-conta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-conta" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list conta">
			
				<g:if test="${contaInstance?.agencia}">
				<li class="fieldcontain">
					<span id="agencia-label" class="property-label"><g:message code="conta.agencia.label" default="Agencia" /></span>
					
						<span class="property-value" aria-labelledby="agencia-label"><g:fieldValue bean="${contaInstance}" field="agencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contaInstance?.conta}">
				<li class="fieldcontain">
					<span id="conta-label" class="property-label"><g:message code="conta.conta.label" default="Conta" /></span>
					
						<span class="property-value" aria-labelledby="conta-label"><g:fieldValue bean="${contaInstance}" field="conta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contaInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="conta.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${contaInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contaInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="conta.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${contaInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contaInstance?.saldo}">
				<li class="fieldcontain">
					<span id="senha-label" class="property-label"><g:message code="conta.saldo.label" default="Saldo" /></span>
					
						<span class="property-value" aria-labelledby="saldo-label"><g:fieldValue bean="${contaInstance}" field="saldo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${contaInstance?.id}" />
					<g:link class="edit" action="edit" id="${contaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					<g:link controller="conta" action="credit">Creditar</g:link>
					<g:link controller="conta" action="debit">Debitar</g:link>
					<g:link controller="conta" action="transfer">Transferir</g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
