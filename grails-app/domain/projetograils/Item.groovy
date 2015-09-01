package projetograils

class Item {
	String nome
	String descricao
	String tamanho
	Float valor
	byte[] imagem

	static belongsTo = [guardaRoupas:GuardaRoupas, categoria:Categoria]

    static constraints = {
    	nome nullable:false, blank:false, maxSize:128
    	tamanho inList: ["PP", "P", "M", "G", "GG"], nullable:false, blank:false
    	valor nullable:false, blank:false
    	valor (matches: "[0-9]+\\.[0-9]{2}")
    	descricao  nullable:true, blank:true, maxSize:1000
    	imagem nullable:true, maxSize:65536
    }
}
