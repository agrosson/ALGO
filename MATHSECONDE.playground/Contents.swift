import UIKit
import Foundation

//:### Algorithme
/*:
 - Note:
 Definition of function
 \
 f(X)=-2X*(X+3)
 \
 Short and long version
 */

func fonction(_ X: Double) -> Double {
    return -2*X*(X+3)
}

// Test
fonction(3)

func fonctionLong (_ X: Double) -> Double {
    var a = -2*X
    let b = X+3
    a = a*b
    return a
}

// Test
fonctionLong(3)

/*:
 - Note:
Test Siracuse Suite
 \
 if n is even then n=n/2
 \
 if n is odd  n = 3*n+1
 */

func siracuse (_ X: Int) -> Int {
    if X%2 != 0 {
        return 3*X+1
    }
    else {
        return X/2
    }
}
// test on siracuse function
siracuse(2)

var counter = 0
func siracuseSuite (_ X: Int) -> Int {
    counter = counter + 1
    if X == 1 || X == 0 {
        print(X)
        print("fin tour \(counter)")
        return 1
    }
    else {
        if X%2 != 0 {
        print(X)
        return siracuseSuite(3*X+1)
        }
        else {
        print(X)
            return siracuseSuite(X/2)
        }
    }}

siracuseSuite(7378)

//: ##  Boucle for jet de dé
var somme = 0

// Cast of nDice and try to get a numberTarget

let nDice = 2
let numberTarget = 7

// Function that adds result of each dice (number of dice is nDice)
func diceSum() -> Int {
    for _ in 1...nDice {
        let jet = Int(arc4random_uniform(6))+1
        somme = somme + jet
    }
    print("la somme est \(somme)")
    return somme
}

// test is the result of dice addition
var test = diceSum()
var tour = 0

// while loop until we get numberTarget
while test != numberTarget {
    somme = 0
    tour = tour + 1
    test = diceSum()
}

print("nombre de lancer pour une victoire  \(tour + 1) ")


//: ##  Algorithme dichotomie
//: ### Définition de la fonction
func xAuCarre(_ X: Double) -> Double {
    return X*X-5
}
xAuCarre(3)
//: ### Déclaration des variables
var a:Double = 0
var b:Double = 3
var k = 15
//: ### Déclaration de l'algorithme
for _ in 0...k {
    let m = Double((a+b)/2)
    if xAuCarre(m) < 0{
        a = m
    } else {
        b = m
    }
    print("borne basse \(a) et borne haute \(b) et différence est de \(b-a)")
}
//: ### Vérification
xAuCarre(a)
xAuCarre(b)
































