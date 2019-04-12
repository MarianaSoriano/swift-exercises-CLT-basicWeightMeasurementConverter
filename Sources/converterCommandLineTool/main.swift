// function to catch User Input
func catchUserInput(unitStr: String, equivalentUnitStr: String) -> String {
    print("\nHow many \(unitStr) do you want to convert to \(equivalentUnitStr)? Press 'Q' to Quit")
    let str: String = readLine()!
    return str
}
var userInput = catchUserInput(unitStr: "centimeters", equivalentUnitStr: "inches")
print("User input was \(userInput)")

// function to validate User Input
func validateUserInput() {

}

//Convert User’s Value (centimeters or grams) into Equivalent Unit (inches or oz)/
func division(userValue: Double, unit: Double) -> Double {
    let result = userValue / unit
    print(result)
    return result
}
//Present Options to User/
print("""
Welcome. 
Press 'C' key to convert Centimeters to Inches 
""")
let usersChoice: String = readLine()!
if  usersChoice == "C" || usersChoice == "c" {
    catchUserInput(unitStr: "centimeters", equivalentUnitStr: "inches")
    division(userValue: 12.7, unit: 2.54)
}