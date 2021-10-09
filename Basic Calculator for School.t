%Arithmetic Calculator Program
%by Jim Xu
%October 16, 2020
%This binary calculator application was written to perform mathematical operations based on two user inputs

%Introduction
put repeat ("-", 80)
put repeat (" ", 25), "Welcome to My Binary Calculator Application!"
put repeat ("-", 80)

%Variables
var number1: real 
var number2: real
var operation: string
var total: real
var performed: string

%First Number
put "Insert your first number here!"
put "Note: Minuends, Dividends and Bases go here"
get number1

%Second Number
put repeat("-", 40)
put "Insert your second number here!"
put "Note: Subtrahends, Divisors and Powers go here"
get number2

%Operation
put repeat("-", 40)
put "Insert the symbol of the operation you wish to perform here!" 
put "(+ for Addition)"
put "(- for Subtraction)"
put "(* for Multiplication)" 
put "(/ for Division)"
put "(** for Exponents)"
get operation

%Calculations: Addition
if operation = "+" then
 total:= number1 + number2
 performed:= "addition"
 
%Calculations: Subtraction
elsif operation = "-" then
 total:= number1 - number2
 performed:= "subtraction"
 
%Calculations: Multiplication
elsif operation = "*" then
 total:= number1 * number2
 performed:= "multiplication"
 
%Calculations: Division
elsif operation = "/" then
 total:= number1 / number2
 performed:= "division"
 
%Calculations: Exponents
elsif operation = "**" then
 total:= number1 ** number2
 performed:= "exponents"
end if

%Output Statement
put repeat ("*", 46)
put "The answer to your ", performed, " equation is ", total
put repeat ("*", 46)
