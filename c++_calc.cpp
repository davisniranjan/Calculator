#include <iostream>

using namespace std;

int main() {
   char op;
   float num1, num2;

   cout << "Enter operator either + or - or * or /: ";
   cin >> op;

   cout << "Enter first operand: ";
   cin >> num1;

   cout << "Enter second operand: ";
   cin >> num2;

   switch(op) {
      case '+':
         cout << num1+num2;
         break;

      case '-':
         cout << num1-num2;
         break;

      case '*':
         cout << num1*num2;
         break;

      case '/':
         cout << num1/num2;
         break;

      default:
         // If the operator is not one of the above, display an error message
         cout << "Error: Invalid operator!";
         break;
   }

   return 0;
}
