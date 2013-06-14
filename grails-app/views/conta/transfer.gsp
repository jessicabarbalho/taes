<%@ page import="bancocjp2.Conta" %>
<%@ page import="bancocjp2.Transferencia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'conta.label', default: 'Conta')}" />
		<title><g:message code="default.transfer.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#transfer-conta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="transfer-conta" class="content scaffold-transfer" role="main">
			<h1><g:message code="default.transfer.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${contaInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${contaInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" >
				<fieldset class="form">
					<g:render template="transferform"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit action="transferPost" value="${message(code: 'default.button.transfer.label', default: 'transferPost')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
