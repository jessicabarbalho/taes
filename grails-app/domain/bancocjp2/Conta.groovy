package bancocjp2

class Conta {
	Long id
	Long version
	
	String nome
	String cpf
	String conta
	String agencia
	String senha
	double saldo
	
	double valorCreditar
	double valorDebitar
	double valorTransferir
	Long contaTransferir
	
    static constraints = {
    }
}
