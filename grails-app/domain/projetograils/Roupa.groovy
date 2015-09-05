package projetograils

class Roupa extends Item{

    static constraints = {
    	nome nullable:false, blank:false, maxSize:128
        valor nullable:false, blank:false
        valor (matches: "[0-9]+\\.[0-9]{2}")
        descricao  nullable:true, blank:true, maxSize:1000
        imagem nullable:true, maxSize:65536
        categoria inList: ["Calça", "Camiseta", "Saia", "Short/Bermuda"]
    	tamanho inList: ["PP", "P", "M", "G", "GG"]
    }
}
