<%@ page import="bancocjp2.Conta" %>


<div class="fieldcontain ${hasErrors(bean: contaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="conta.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" value="${contaInstance?.nome}" required="" default="0"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contaInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="conta.cpf.label" default="CPF" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" value="${contaInstance?.cpf}" required="" default="0"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contaInstance, field: 'conta', 'error')} required">
	<label for="conta">
		<g:message code="conta.conta.label" default="Conta" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="conta" value="${contaInstance?.conta}" required="" default="0"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contaInstance, field: 'agencia', 'error')} required">
	<label for="agencia">
		<g:message code="conta.agencia.label" default="Agencia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="agencia" value="${contaInstance?.agencia}" required="" default="0"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contaInstance, field: 'saldo', 'error')} required">
	<label for="saldo">
		<g:message code="conta.saldo.label" default="Saldo Inicial" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="" name="saldo" value="${fieldValue(bean: contaInstance, field: 'saldo')}" required="" default="0"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contaInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="conta.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senha" value="${contaInstance?.senha}" required="" default="0"/>
</div>


<g:field type="hidden" name="valorCreditar" value="${fieldValue(bean: contaInstance, field: 'saldo')}" required="" value="0"/>
<g:field type="hidden" name="valorDebitar" value="${fieldValue(bean: contaInstance, field: 'saldo')}" required="" value="0"/>
<g:field type="hidden" name="valorTransferir" value="${fieldValue(bean: contaInstance, field: 'saldo')}" required="" value="0"/>
<g:field type="hidden" name="contaTransferir" value="${fieldValue(bean: contaInstance, field: 'saldo')}" required="" value="0"/>
