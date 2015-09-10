package projetograils

class Usuario extends SecUser{   
	String nome
	String sobrenome
	String email
	String telefone
    
    static hasOne = [guardaRoupas: GuardaRoupas]

    static constraints = {
    	nome nullable:false, blank:false, maxSize:32
    	sobrenome nullable:false, blank:false, maxSize:64
    	email nullable:false, blank:false, matches: "[_a-zA-Z0-9-\\.]+@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)\\.?([A-Za-z]{2,})?"
    	telefone nullable:false, blank:false, matches: "\\([0-9]{2}\\) ([0-9]{4,5})-[0-9]{4,5}"
        guardaRoupas nullable:true
    }

    String toString(){
    	return nome
    }
}
