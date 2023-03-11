import Foundation

func calculator() {
    print("Enter first number:")
    guard let num1 = Double(readLine() ?? "") else {
        print("Invalid input")
        return
    }
    
    print("Enter second number:")
    guard let num2 = Double(readLine() ?? "") else {
        print("Invalid input")
        return
    }
    
    print("Select operator (+, -, *, /):")
    guard let op = readLine() else {
        print("Invalid input")
        return
    }
    
    var result: Double
    
    switch op {
    case "+":
        result = num1 + num2
    case "-":
        result = num1 - num2
    case "*":
        result = num1 * num2
    case "/":
        guard num2 != 0 else {
            print("Cannot divide by zero")
            return
        }
        result = num1 / num2
    default:
        print("Invalid operator")
        return
    }
    
    print("Result: \(result)")
}

calculator()
