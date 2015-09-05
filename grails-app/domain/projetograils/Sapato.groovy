package projetograils

class Sapato extends Item {

    static constraints = {
        categoria inList: ["Sapato", "Tenis", "Sapatilha", "Sandalia"]
        tamanho inList: ["33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44"]
    }

    String toString(){
    	nome
    }
}
