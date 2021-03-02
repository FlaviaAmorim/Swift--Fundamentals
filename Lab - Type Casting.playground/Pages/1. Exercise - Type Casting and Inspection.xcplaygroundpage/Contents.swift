/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var items: [Any] = [8, 9.5, "Falso", true, 6]

/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for item in items {
    if let integer = item as? Int {
        print("\(integer) é um valor inteiro")
    } else if let text = item as? String {
        print("\(text) é uma string")
    } else if let float = item as? Double {
        print("\(float) é um double")
    } else if let boolean = item as? Bool {
        print("\(boolean) é um boleano")
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
let anyDictionary: [String: Any] = ["String": "Brad", "trueBool": true, "Int": 10, "Double": 20.0, "falseBool": false]
 print(anyDictionary)
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0
for (_, value) in anyDictionary {
    if let isDouble = value as? Double {
        total += isDouble
    } else if let inteiro = value as? Int {
        total += Double(inteiro)
    } else if let _ = value as? String {
        total += 1
    } else if let isBool = value as? Bool {
        if isBool == true {
            total += 2
        } else {
            total -= 3
        }
    }
}

print(total)
/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */


//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
