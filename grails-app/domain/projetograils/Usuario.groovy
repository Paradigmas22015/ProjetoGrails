package projetograils

class Usuario extends SecUser{
	String nome
	String sobrenome
	String email
	String telefone

    static constraints = {
    	nome nullable:false, blank:false, maxSize:32
    	sobrenome nullable:false, blank:false, maxSize:64
    	email nullable:false, blank:false
    	telefone nullable:false, blank:false
    }
}
