%Mark Averages
%by Jim Xu
%October 16 2020
%This application was written to calculate the average of a student's marks from 4 inputs

%Introduction
put repeat ("-", 80)
put repeat (" ", 15), "Welcome to My Four Mark Average Calculator Program!"
put repeat ("-", 80)

%Variables
var mark1: real
var mark2: real
var mark3: real
var mark4: real
var total: real

%Mark Input 1
put "Please input your first mark below"
get mark1
if mark1>100 then
put "Your mark has been adjusted to 100" 
mark1:=100
end if

%Mark Input 2
put repeat("-", 35)
put "Please input your second mark below"
get mark2
if mark2>100 then
put "Your mark has been adjusted to 100" 
mark2:=100
end if

%Mark Input 3
put repeat("-", 35)
put "Please input your third mark below"
get mark3
if mark3>100 then
put "Your mark has been adjusted to 100" 
mark3:=100
end if

%Mark Input 4
put repeat("-", 35)
put "Please input your fourth mark below"
get mark4
if mark4>100 then
put "Your mark has been adjusted to 100" 
mark1:=100
end if

%Output Mark Calculations
total:= (mark1 + mark2 + mark3 + mark4)/4

%Output Statement
put repeat ("*", 25)
put "Your mark average is ", total
put repeat ("*", 25)
