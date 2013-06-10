package bancocjp2

class Conta {
	Long id
	Long version
	
	String nome
	String cpf
	String conta
	String agencia
	String senha
	BigDecimal saldo
	
    static constraints = {
    }
}
