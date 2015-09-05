package projetograils

class Sapato extends Item {

    static constraints = {
    	nome nullable:false, blank:false, maxSize:128
        valor nullable:false, blank:false
        valor (matches: "[0-9]+\\.[0-9]{2}")
        descricao  nullable:true, blank:true, maxSize:1000
        imagem nullable:true, maxSize:65536
        categoria inList: ["Sapato", "Tenis", "Sapatilha", "Sandalia"]
        tamanho inList: ["33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44"]
    }
}
