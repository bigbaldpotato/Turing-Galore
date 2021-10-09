Turing Language

%Current Age Program

%by Jim Xu

%October 23, 2020

%This program was written to calculate the user's age, no matter what the current date is


%Intro

put repeat ("-", 80)

put repeat (" ", 32), "Age Program"

put repeat ("-", 80)


%This variable "today", holds the date extracted from the operating system by the program in dd/mmm/yy format

var today : string

date (today) 


%Extracting variable values from variable "today"

var cutDay := today (1 .. 2)

var cutMonth := today (4 .. 6)

var cutYear := today (8 .. *)


%These variables store values that will be converted below from the string type of the variables above to integer type

var curMonth : int

var intYear : int

var intDay : int


%Converting the string type value of the year extracted from the variable "today" to an integer type so it can be manipulated mathematically

if strintok (cutYear) then

intYear:= strint (cutYear)

end if


if strintok (cutDay) then

intDay:= strint (cutDay)

end if


%Setting the final value of the current year by adding a hundredths and thousandths place, allowing it to become the minuend in the calculation of the age
var finalcurYear : int

finalcurYear:=intYear + 2000


%Converting the extracted month (in string type) from the computer into a string type so it can be manipulated mathematically

if cutMonth = "Jan" then

    curMonth := 1
    
elsif cutMonth = "Feb" then

    curMonth := 2
    
elsif cutMonth = "Mar" then

    curMonth := 3
    
elsif cutMonth = "Apr" then

    curMonth := 4
    
elsif cutMonth = "May" then

    curMonth := 5
    
elsif cutMonth = "Jun" then

    curMonth := 6
    
elsif cutMonth = "Jul" then

    curMonth := 7
    
elsif cutMonth = "Aug" then

    curMonth := 8
    
elsif cutMonth = "Sep" then

    curMonth := 9
    
elsif cutMonth = "Oct" then

    curMonth := 10
    
elsif cutMonth = "Nov" then

    curMonth := 11
    
elsif cutMonth = "Dec" then

    curMonth := 12
    
end if


%This variable holds the user's input of their birthday in dd/mmm/yyyy format

var birthday : string


%Extracting variable values from date retrieved from operating system by program

var birthDay : string

var birthMonth : string

var birthYear : string


%These variables store values that have been converted from the string type of the variables above to integer type

var intbirthMonth : int

var finalbirthYear : int

var intbirthDay : int


%This variable stores the final, calculated age of the user

var age : int

%Introduction and prompt for user to input date of birth

put "Greetings!!! The date today is ", cutDay, "/", cutMonth, "/", finalcurYear

put "Please input your birthday in the format of dd/mmm/yyyy wear the mmm is the first 3 letters of the month."

get birthday


%Extracting variable values from variable "birthday"

birthDay := birthday (1 .. 2)

birthMonth := birthday (4 .. 6)

birthYear := birthday (8 .. *)


%Converting the extracted month (in string type) from "birthday" into a string type so it can be manipulated mathematically

if Str.Lower(birthMonth) = "jan" then

    intbirthMonth := 1
    
elsif Str.Lower(birthMonth) = "feb" then

    intbirthMonth := 2
    
elsif Str.Lower(birthMonth) = "mar" then

    intbirthMonth := 3
    
elsif Str.Lower(birthMonth) = "apr" then

    intbirthMonth := 4
    
elsif Str.Lower(birthMonth) = "may" then

    intbirthMonth := 5
    
elsif Str.Lower(birthMonth) = "jun" then

    intbirthMonth := 6
    
elsif Str.Lower(birthMonth) = "jul" then

    intbirthMonth := 7
    
elsif Str.Lower(birthMonth) = "aug" then

    intbirthMonth := 8
    
elsif Str.Lower(birthMonth) = "sep" then

    intbirthMonth := 9
    
elsif Str.Lower(birthMonth) = "oct" then

    intbirthMonth := 10
    
elsif Str.Lower(birthMonth) = "nov" then

    intbirthMonth := 11
    
elsif Str.Lower(birthMonth) = "dec" then

    intbirthMonth := 12
    
else 

    put "Incorrect Format"
    
end if


%Converting the string type value of the "birthDay" to an integer type so it can be manipulated mathematically

if strintok (birthDay) then

intbirthDay := strint (birthDay)

end if


%Converting the string type value of the "birthYear" to an integer type so it can be manipulated mathematically

if strintok (birthYear) then

finalbirthYear:= strint (birthYear)

end if


%Final calculations to determine the age of the user as of the current date

if intbirthMonth>curMonth then 

    age :=  finalcurYear - finalbirthYear - 1
    
elsif intbirthMonth=curMonth then

    if intbirthDay>intDay then
    
        age :=  finalcurYear - finalbirthYear - 1
        
    else
    
        age :=  finalcurYear - finalbirthYear
        
    end if
    
else 

    age :=  finalcurYear - finalbirthYear
    
end if 


%Final Output Statement

put repeat ("*", 38)

put "You are ", age, " years old as of ", cutDay, "/", cutMonth, "/", finalcurYear
