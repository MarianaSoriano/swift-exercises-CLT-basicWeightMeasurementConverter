// Basic Exercise to convert Inches to Centimeters and vice versa
//Start: Feb 22, 2019

// Constants
let inch = 1
let centimeter = 2.54

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
    label:
    for _ in 1...3 {
        print("How many centimeters do you want to convert to inches? Press 'Q' to Quit")
        let str: String = readLine()!
        if let value = str.double  {
            let fromCmToIn = value / centimeter
            print("\(value) centimeters are \(Float(fromCmToIn)) inches")
        }
        else if str == "Q" || str == "q" {
            print("Bye!")
            break label
        }
        else {
            print("Invalid Input. Please enter only numbers")
        }
    }


}
func convertInchesToCentimeters() {
    print("How many inches do you want to convert to centimeters?")
    let str: String = readLine()!
    if let value = str.double  {
        let fromInToCm = value * centimeter
        print("\(value) inches are \(Float(fromInToCm)) centimeters")
    }
    else if str == "Q" {
        print("Bye!")
    }
    else {
        print("Invalid Input. Please enter only numbers")
    }
}

print("Press 'C' key if you want to convert Centimeters to inches and 'I' key if you want to convert Inches to centimeters.")
let usersChoice: String = readLine()!

if  usersChoice == "C" || usersChoice == "c" { // || "or" logical operator 
        convertCentimetersToInches()  // Convert Centimeters to Inches Function
}
else if usersChoice == "I" || usersChoice == "i" {
    convertInchesToCentimeters()  // Convert Inches to Centimeters Function
} else {
    print("Invalid Key. Please press 'C' or 'I' keys")
}



// TODO: Solve "cannot convert value of type 'String' to expected argument type 'Bool' "  issue
// TODO: Ask the user their values and do calculation ✔︎ 
// TODO: Convert "inputIn" var into an Integer and use it in fromInToCm var ✔︎ 
// TODO: Solve "incorrect" user's input issue. What happens if the user doesn't give a number as input? ✔︎ 
// TODO: Use "let value" to do math and print result ✔︎ 
// TODO: Ask user if they want to convert inches or centimeters. Create a Conditional Statement to execute corresponding code ✔︎ 