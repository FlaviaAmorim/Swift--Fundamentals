/*:
 ## Exercise - Create Functions
 
 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func introduceMyself() {
    print("Meu nome é Flavia, tenho 27 anos,trabalho como programadora trainee")
}
introduceMyself()
/*:
 Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
 */
func magicEightBall() {
    let randomNumber = Int.random(in: 0...4)
    
    switch randomNumber {
    case 0:
        print("O numero gerado é zero")
    case 1:
        print("O numero gerado é um")
    case 2:
        print("O numero gerado é dois")
    case 3:
        print("O numero gerado é tres")
    case 4:
        print("O numero gerado é quatro")
    default:
        break
    }
}
magicEightBall()
magicEightBall()
magicEightBall()
magicEightBall()

//: page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
