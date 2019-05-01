//Measurements and Weight Basic Converter on Swift
//Developed by Mariana Soriano. CDMX 2019

//Declare Units as Constants
let inch = 0.393701
let cm = 2.54
let oz = 0.035274
let g = 28.3495

//Declare Variables
extension StringProtocol {
    var double: Double? {
        return Double(self)
    }
    var float: Float? {
        return Float(self)
    }
    var integer: Int? {
        return Int(self)
    }
}

//Welcome user to program
print("Welcome to Measurements and Weight Converter")
//Present Unit's Options to convert. Ask user to press according key. Give the option to Quit.
print("""
Press 'I' to convert inches to centimeters
Press 'C' to convert centimeters to inches
Press 'O' to convert ounces to grams
Press 'G' to convert grams to ounces
Press 'Q' to quit
""")
//Capture user's input
var userInput : String! //unwrap optional value
userInput = readLine() //optional value by default
//Exit the program if user choose it
label:
if userInput == "Q" || userInput == "q"{
    print("Bye!")
    break label
}

else if userInput == "I" || userInput == "i" || userInput == "C" || userInput == "c" || userInput == "O" || userInput == "o" || userInput == "G" || userInput == "g"{
    //TODO: Put all my code into a while loop to repeat the program execution until required
    // Execute WHILE use don't press "q" or "Q" Keys
    func converter(userInputStr: String, equivalentInputStr: String, equivalenUnit: Double){
        print("How many \(userInputStr) do you want to convert to \(equivalentInputStr)?")
        let userInput: String! = readLine()
        if let value = userInput.double  {
            let userQuantityValue = userInput.double
            //Do Arithmetic Operation
            func conversion() {
                let result = userQuantityValue! * equivalenUnit
                print("The result is: \(result)")
            }
            //Present Result
            conversion()
        } else {
            print("Invalid Input. Please enter only numbers")
        }
    }
    //Avoid error if the user press lowercase keys
    if userInput == "i" { 
        userInput = "I"
    }
    else if userInput == "c" {
        userInput = "C"
    }
    else if userInput == "o" {
        userInput = "O"
    }
    else if userInput == "g" {
        userInput = "G"
    }
    let userChoice : String! = userInput
    //Asigning 'cases' according to user choice
    switch userChoice { 
    case "I":
        converter(userInputStr: "inches", equivalentInputStr: "centimenters", equivalenUnit: cm)
    case "C":
        print("Convert Centimeters")

    case "O":
        print("Convert Ounces")

    case "G":
        print("Convert Grams")

    default:
        print("")
    }
}
else {
    print("Please, press required key")
}