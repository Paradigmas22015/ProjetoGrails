package projetograils

class GuardaRoupas {
	String nome
	Usuario dono

	static hasMany = [itens:Item]

    static constraints = {
    	nome nullable:false, blank:false, maxSize:32
    	//dono unique:true
    }

    String toString(){
    	return nome
    }
}
