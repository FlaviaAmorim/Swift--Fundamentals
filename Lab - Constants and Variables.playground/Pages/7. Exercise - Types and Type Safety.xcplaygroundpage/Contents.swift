/*:
 ## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking on the variable name.
 */
var firstDecimal = 2.2
var secondDecimal = 2.3

/*:
 Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
 */
var trueOrFalse = true
//firstDecimal = trueOrFalse
print("Nao compila porque o firstDecimal é do tipo double e o trueOrFalse é do tipo booleano. Portanto nao se pode atribuir um valor para tipos diferentes")
/*:
 Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
 */
var title = "ATENCAO"
//firstDecimal = title
print("Nao compila porque o firstDecimal é do tipo double e o title é do tipo string. Portanto nao se pode atribuir um valor para tipos diferentes")
/*:
 Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
 */
var number = 4
//firstDecimal = number
print("Nao compila porque o firstDecimal é do tipo double e o number é do tipo int. Portanto nao se pode atribuir um valor para tipos diferentes")
//: [Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
