<%@ page import="bancocjp2.Transferencia" %>

<div class="fieldcontain ${hasErrors(bean: contaInstance, field: 'conta', 'error')} required">
	<label for="contaTransferir">
		<g:hiddenField name="id" value="${contaInstance?.id}" />
		<g:hiddenField name="id" value="${contaInstance?.version}" />
		<g:message code="Conta destino" default="Conta destino" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="" name="contaTransferir" value="${fieldValue(bean: contaInstance, field: 'contaTransferir')}" required="" default="0"/>

	<label for="valorTransferir">
		<g:hiddenField name="id" value="${contaInstance?.id}" />
		<g:hiddenField name="id" value="${contaInstance?.version}" />
		<g:message code="Valor à transferir" default="Valor à transferir" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="valorTransferir" value="${fieldValue(bean: contaInstance, field: 'valorTransferir')}" required="" default="0"/>
</div>

