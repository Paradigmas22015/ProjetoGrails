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
        nome nullable:false, blank:false, maxSize:128
        valor nullable:false, blank:false
        valor (matches: "[0-9]+\\.[0-9]{2}")
        descricao  nullable:false, blank:true, maxSize:1000
        imagem nullable:true, maxSize:65536
        categoria nullable:false
        tamanho nullable:false
    }

    static mapping = {
        tablePerHierarchy false
    }

    String toString(){
        return nome
    }
}
