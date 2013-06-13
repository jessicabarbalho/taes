<%@ page import="bancocjp2.Conta" %>

<div class="fieldcontain ${hasErrors(bean: contaInstance, field: 'saldo', 'error')} required">
	<label for="valor">
		<g:hiddenField name="id" value="${contaInstance?.id}" />
		<g:message code="Valor à creditar" default="Valor à creditar" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="" name="saldo" value="${fieldValue(bean: contaInstance, field: 'saldo')}" required="" default="0"/>
</div>

