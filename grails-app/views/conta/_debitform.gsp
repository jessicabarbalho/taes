<%@ page import="bancocjp2.Conta" %>

<div class="fieldcontain ${hasErrors(bean: contaInstance, field: 'saldo', 'error')} required">
	<label for="valor">
		<g:hiddenField name="id" value="${contaInstance?.id}" />
		<g:message code="Valor à debitar" default="Valor à debitar" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="" name="valor" value="${fieldValue(bean: contaInstance, field: 'valor')}" required="" default="0"/>
</div>
