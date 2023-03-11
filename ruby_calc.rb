puts "Enter first number:"
num1 = gets.chomp.to_f

puts "Enter second number:"
num2 = gets.chomp.to_f

puts "Select operator (+, -, *, /):"
op = gets.chomp

case op
when "+"
  result = num1 + num2
when "-"
  result = num1 - num2
when "*"
  result = num1 * num2
when "/"
  if num2 == 0
    puts "Cannot divide by zero"
    return
  else
    result = num1 / num2
  end
else
  puts "Invalid operator"
  return
end

puts "Result: #{result}"
