<!DOCTYPE html>
<html>
<head>
	<title>Simple Calculator</title>
</head>
<body>

<form method="post">
	<input type="text" name="num1" placeholder="Enter first number">
	<input type="text" name="num2" placeholder="Enter second number">
	<select name="operator">
		<option value="+">Addition</option>
		<option value="-">Subtraction</option>
		<option value="*">Multiplication</option>
		<option value="/">Division</option>
	</select>
	<br>
	<button type="submit" name="submit" value="submit">Calculate</button>
</form>

<?php
if(isset($_POST['submit'])){
	$num1 = $_POST['num1'];
	$num2 = $_POST['num2'];
	$operator = $_POST['operator'];
	switch ($operator) {
		case '+':
			$result = $num1 + $num2;
			break;
		case '-':
			$result = $num1 - $num2;
			break;
		case '*':
			$result = $num1 * $num2;
			break;
		case '/':
			if($num2 == 0){
				$result = "Cannot divide by zero";
			}else{
				$result = $num1 / $num2;
			}
			break;
		default:
			$result = "Invalid operator";
			break;
	}
	echo "Result: $result";
}
?>

</body>
</html>
