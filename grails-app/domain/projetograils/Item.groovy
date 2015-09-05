package projetograils

class Item {
	String nome
	String descricao
	Float valor
	byte[] imagem
    String categoria
    String tamanho

	static belongsTo = [guardaRoupas:GuardaRoupas]

    static constraints = {
    }

    static mapping = {
        tablePerHierarchy false
    }

    String toString(){
        nome
    }
}
