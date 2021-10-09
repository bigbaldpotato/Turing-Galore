%Currency Conversion: CAD and Euro
%by Jim Xu
%October 16 2020
%This application was written to convert a user's input of Canadian Dollars to Euros

%Introduction
put repeat ("-", 80)
put repeat (" ", 10), "Welcome to My Currency Conversion Calculator for CAD to Euros!"
put repeat ("-", 80)

%Variables
var CAD: real
var Euros: real
var currency: string
var rounded1: real
var rounded2: real
var roundedfinal: real

%Rate of CAD to Euro Currency Exchange where 1 CAD = 1.55 Euros and so 1 CAD is multiplied by 1.55 to get 1.55 Euros
const rate1: real:= 1.55
%Rate of Euro to CAD Currency Exchange where 1 Euro = 0.65 CAD and so 1 Euro is multiplied by 0.65 to get 0.65 CAD
const rate2: real:= 0.65

%User Input
put "Please select the currency you would like to input"
put "Canadian Dollars or Euros"
get currency : *

if currency = "Euros" or currency = "euros" then
put repeat("-", 35)
put "Please input the amount of Euros to be converted to Canadian Dollars"
get Euros

%Output Calculations
CAD:= Euros*rate2
%Rounding to nearest hundredth
rounded1:= CAD*100
rounded2:= round (rounded1)
roundedfinal:= rounded2/100

%Output Statement
put repeat ("*", 25)
put "Your ", Euros ..
put " Euros is worth ", roundedfinal ..
put " Canadian Dollars"

elsif Str.Lower (currency) = "canadian dollar" or Str.Lower (currency) = "canadian dollars" then
put repeat("-", 35)
put "Please input the Canadian Dollars to be converted to Euros"
get CAD

%Output Calculations
Euros:= CAD*rate1

%Rounding to nearest hundredth
rounded1:= Euros*100
rounded2:= round (rounded1)
roundedfinal:= rounded2/100

%Output Statement
put repeat ("*", 25)
put "Your ", CAD ..
put " Canadian Dollars is worth ", roundedfinal ..
put " Euros"
end if
