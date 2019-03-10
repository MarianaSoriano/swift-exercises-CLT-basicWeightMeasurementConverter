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

// Convert Inches to Centimeters

print("Press 'C' key if you want to convert Centimeters to inches and 'I' key if you want to convert Inches or centimeters")
let usersChoice: String = readLine()!

if  usersChoice == "C" || usersChoice == "c" { // || "or" logical operator 
    print("Execute Centimeters Converter Code")
        // Convert Centimeters to Inches
    print("How many centimeters do you want to convert to inches?")
    let str: String = readLine()!
    if let value = str.double  {
        var fromCmToIn = value / centimeter
        print("\(value) centimeters are \(Float(fromCmToIn)) inches")
    } else {
        print("Invalid Input. Please enter only numbers")
    }
}
else if usersChoice == "I" || usersChoice == "i" {
    print("Execute Inches converter Code")
} else {
    print("Invalid Key. Please press 'C' or 'I' keys")
}


// print("How many inches do you want to convert to centimeters?")

// let str: String = readLine()!
// if let value = str.double  {
//     var fromInToCm = value * centimeter
//     print("\(value) inches are \(Float(fromInToCm)) centimeters")
// } else {
//     print("Invalid Input. Please enter only numbers")
// }



// TODO: Ask the user their values and do calculation ✔︎ 
// TODO: Convert "inputIn" var into an Integer and use it in fromInToCm var ✔︎ 
// TODO: Solve "incorrect" user's input issue. What happens if the user doesn't give a number as input? ✔︎ 
// TODO: Use "let value" to do math and print result ✔︎ 
// TODO: Ask user if they want to convert inches or centimeters. Create a Conditional Statement to execute corresponding code