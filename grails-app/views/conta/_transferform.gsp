<%@ page import="bancocjp2.Conta" %>

<div class="fieldcontain ${hasErrors(bean: contaInstance, field: 'conta', 'error')} required">
	<label for="conta">
		<g:hiddenField name="id" value="${contaInstance?.id}" />
		<g:hiddenField name="id" value="${contaInstance?.version}" />
		<g:message code="Conta destino" default="Conta destino" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="" name="conta" value="${fieldValue(bean: contaInstance, field: 'conta')}" required="" default="0"/>

	<label for="valor">
		<g:hiddenField name="id" value="${contaInstance?.id}" />
		<g:hiddenField name="id" value="${contaInstance?.version}" />
		<g:message code="Valor à transferir" default="Valor à creditar" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="" name="valor" value="${fieldValue(bean: contaInstance, field: 'valor')}" required="" default="0"/>
</div>

