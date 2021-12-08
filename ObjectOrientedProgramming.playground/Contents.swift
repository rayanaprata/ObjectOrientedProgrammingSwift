import UIKit

// Classes, Métodos, Atributos
// Polimorfismo, Herança e Encapsulamento

// Herança e o reuso de código

//class animal {
//
//}
//
//class mamifero: animal {
//
//}
//
//class ave: animal {
//
//}
//
//class cachorro: mamifero {
//
//}
//
//class humano: mamifero {
//
//}
//
//class passaro: ave {
//
//}

// Polimorfismo - objetos e métodos diferentes podem implementar métodos de formas diferentes

class Animal {
    var nome: String = ""
    var altura: Double = 0.0
    var peso: Double = 0.0
    var som: String = ""
    
    init(nome: String, altura: Double, peso: Double, som: String) {
        self.nome = nome
        self.altura = altura
        self.peso = peso
        self.som = som
    }
    
    func imprimeInfo() {
        print("\(self.nome) tem \(self.altura) cms e pesa \(self.peso) kgs e emite o som \(self.som).")
    }
}

var bob = Animal(nome: "Bob", altura: 38.2, peso: 25.4, som: "Woof")
//bob.imprimeInfo()

class Cachorro: Animal {
    
    func cavar() {
        print("\(self.nome) cava buracos")
    }
    
    // Usando polimorfismo pois estou sobrescrevendo o método
    override func imprimeInfo() {
        super.imprimeInfo()
        print("e cava buracos enormes! \n")
    }
}

var fred = Cachorro(nome: "Fred", altura: 24.7, peso: 31.2, som: "Auau")
//fred.imprimeInfo()
//fred.cavar()

func imprimeNossaFuncao(animal: Animal) {
    animal.imprimeInfo()
}

imprimeNossaFuncao(animal: fred)
imprimeNossaFuncao(animal: bob)

fred.nome = "Thor"
print("\n" + fred.nome)

bob.peso = 45.2
print(bob.peso)
