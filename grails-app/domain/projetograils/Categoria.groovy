package projetograils

class Categoria {
	String nome

	static hasMany = [itens:Item]

    static constraints = {
    	nome inList: ["Calça", "Camiseta", "Saia", "Short/Bermuda"], nullable: false, blank: false
    }

}
