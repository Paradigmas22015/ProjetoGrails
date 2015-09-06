package projetograils

class GuardaRoupas {
	String nome

	static hasMany = [itens:Item]

    static constraints = {
    	nome nullable:false, blank:false, maxSize:32
    }

    String toString(){
    	nome
    }
}
