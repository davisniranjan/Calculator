use std::io;

fn main() {
    let mut num1 = String::new();
    let mut num2 = String::new();
    let mut operator = String::new();

    println!("Enter first number:");
    io::stdin().read_line(&mut num1).expect("Failed to read line");

    println!("Enter second number:");
    io::stdin().read_line(&mut num2).expect("Failed to read line");

    println!("Select operator (+, -, *, /):");
    io::stdin().read_line(&mut operator).expect("Failed to read line");

    let num1: f64 = num1.trim().parse().expect("Invalid input");
    let num2: f64 = num2.trim().parse().expect("Invalid input");

    match operator.trim() {
        "+" => println!("Result: {}", num1 + num2),
        "-" => println!("Result: {}", num1 - num2),
        "*" => println!("Result: {}", num1 * num2),
        "/" => {
            if num2 == 0.0 {
                println!("Cannot divide by zero");
            } else {
                println!("Result: {}", num1 / num2);
            }
        }
        _ => println!("Invalid operator"),
    }
}
