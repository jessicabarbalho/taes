<%@ page import="bancocjp2.Transferencia" %>

<div class="fieldcontain ${hasErrors(bean: contaInstance, field: 'conta', 'error')} required">
	<label for="contaOrigem">
		<g:hiddenField name="id" value="${contaInstance?.id}" />
		<g:hiddenField name="id" value="${contaInstance?.version}" />
		<g:message code="Conta destino" default="Conta destino" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="" name="contaOrigem" value="${fieldValue(bean: contaInstance, field: 'contaOrigem')}" required="" default="0"/>

	<label for="contaDestino">
		<g:hiddenField name="id" value="${contaInstance?.id}" />
		<g:hiddenField name="id" value="${contaInstance?.version}" />
		<g:message code="Conta destino" default="Conta destino" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="" name="contaDestino" value="${fieldValue(bean: contaInstance, field: 'contaDestino')}" required="" default="0"/>


	<label for="valor">
		<g:hiddenField name="id" value="${contaInstance?.id}" />
		<g:hiddenField name="id" value="${contaInstance?.version}" />
		<g:message code="Valor à transferir" default="Valor à transferir" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="" name="valor" value="${fieldValue(bean: contaInstance, field: 'valor')}" required="" default="0"/>
</div>

