<%@ page import="bancocjp2.Conta" %>

<div class="fieldcontain ${hasErrors(bean: contaInstance, field: 'valorDebitar', 'error')} required">
	<label for="valorDebitar">
		<g:hiddenField name="id" value="${contaInstance?.id}" />
		<g:message code="Valor à debitar" default="Valor à debitar" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="valorDebitar" value="${fieldValue(bean: contaInstance, field: 'valorDebitar')}" required="" default="0"/>
</div>

