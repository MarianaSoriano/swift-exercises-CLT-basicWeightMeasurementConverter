// Basic Exercise to convert Inches to Centimeters and vice versa
//Start: Feb 22, 2019

// Constants
let inch = 1
let centimeter = 2.54
let ounce = 1
let gram = 28.35
let startString = "Press 'S' to Start or Press 'Q' to Quit"
let errorString = "Invalid Input. Please enter only numbers"

extension StringProtocol { //A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality.
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

func convertCentimetersToInches() {
    print(startString)
    let str: String = readLine()!
    if str == "Q" || str == "q" {
        print("Come back soon!")
    }
    else if str == "S" || str == "s" {
        let valueString = "centimeters"
        let contraryValueString = "inches"
        while str != "Q" {
            print("\nHow many \(valueString) do you want to convert to \(contraryValueString)? Press 'Q' to Quit") //\n line break
            let str: String = readLine()!
            if str == "Q" || str == "q" {
                print("Bye!")
                break
            }
            else if str != "Q" || str != "q" {
                if let value = str.double  {
                    let fromCmToIn = value / centimeter
                    print("\(value) \(valueString) are \(Float(fromCmToIn)) \(contraryValueString)")
                }
                else { 
                    print(errorString)
                } 
            }
        } 
    }
}
// TODO: Finish "Inches" code.
func convertInchesToCentimeters() {
    print(startString)
    let str: String = readLine()!
    if str == "Q" || str == "q" {
        print("Come back soon!")
    }
    else if str == "S" || str == "s" {
        let valueString = "inches"
        let contraryValueString = "centimeters"
        while str != "Q" {
            print("\nHow many \(valueString) do you want to convert to \(contraryValueString)? Press 'Q' to Quit") //\n line break
            let str: String = readLine()!
            if str == "Q" || str == "q" {
                print("Bye!")
                break
            }
            else if str != "Q" || str != "q" {
                if let value = str.double  {
                    let fromInToCm = value * centimeter
                    print("\(value) \(valueString) are \(Float(fromInToCm)) \(contraryValueString)")
                }
                else { 
                    print(errorString)
                } 
            }
        } 
    }
}

// TODO: Do "Ounces" code.
// TODO: Do "Grams" code.

// TODO: Complete 'O' Onces and 'G' Grams options
print("""
Welcome. 
Press 'C' key to convert Centimeters to inches 
Press 'I' key to convert Inches to centimeters
Press 'O' key to convert Ounces to grams
Press 'G' key to convert Grams to ounces
Press 'Q' key to Quit
""") //Multiline String Literal
let usersChoice: String = readLine()!
label:
if  usersChoice == "C" || usersChoice == "c" { // || "or" logical operator 
    convertCentimetersToInches()  // Convert Centimeters to Inches Function
}
else if usersChoice == "I" || usersChoice == "i" {
    convertInchesToCentimeters()  // Convert Inches to Centimeters Function
} 
else if usersChoice == "Q" || usersChoice == "q" {
    print("Come back soon!")
    break label
}
else {
    print("Invalid Key. Please press 'C', 'I', 'O' or 'G' keys")
}
// DONE: Solve "cannot convert value of type 'String' to expected argument type 'Bool' "  issue
// DONE: Ask the user their values and do calculation
// DONE: Convert "inputIn" var into an Integer and use it in fromInToCm var
// DONE: Solve "incorrect" user's input issue. What happens if the user doesn't give a number as input?
// DONE: Use "let value" to do math and print result
// DONE: Ask user if they want to convert inches or centimeters. Create a Conditional Statement to execute corresponding code