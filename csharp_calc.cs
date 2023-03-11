using System;

class Calculator {
    static void Main() {
        Console.WriteLine("Welcome to the Calculator App");

        Console.WriteLine("Please enter the first number:");
        double num1 = double.Parse(Console.ReadLine());

        Console.WriteLine("Please enter the second number:");
        double num2 = double.Parse(Console.ReadLine());

        Console.WriteLine("Please enter the operation (+, -, *, /):");
        char op = char.Parse(Console.ReadLine());

        double result = 0;
        switch (op) {
            case '+':
                result = num1 + num2;
                break;
            case '-':
                result = num1 - num2;
                break;
            case '*':
                result = num1 * num2;
                break;
            case '/':
                result = num1 / num2;
                break;
            default:
                Console.WriteLine("Invalid operation");
                return;
        }

        Console.WriteLine("Result: " + result);
    }
}
