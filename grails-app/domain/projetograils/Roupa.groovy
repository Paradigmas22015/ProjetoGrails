package projetograils

class Roupa extends Item{

    static constraints = {
        categoria inList: ["Calça", "Camiseta", "Saia", "Short/Bermuda"]
    	tamanho inList: ["PP", "P", "M", "G", "GG"]
    }

    String toString(){
       return nome
    }
}
