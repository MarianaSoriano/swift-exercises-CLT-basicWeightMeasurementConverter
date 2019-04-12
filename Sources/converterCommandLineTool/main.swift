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
    division(userValue: 12.7, unit: 2.54)
}