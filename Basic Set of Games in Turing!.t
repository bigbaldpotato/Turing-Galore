%The Looping Program
%by Jim Xu
%Oct 29, 2020
%This program was written to contain a number of looped programs and games for the user to enjoy.

var number : int 
                    
%The entirety of this program is within this loop.
%This loop provides the main menu from which users can select programs from by inputting the associated integers displayed.
loop
    put "Please insert the associated number of the program you wish to open"
    put "1 - Start, Stop, Step"
    put "2 - Lottery Ticket Generator"
    put "3 - Pet Training"
    put "4 - Turing Counts Loops"
    put "5 - What Sound Does a Cow Make?"
    put "6 - Table of Squares"
    put "7 - Multiples of 5 Between 100 to 50"
    put "8 - Calculating Mark Averages"
    
    get number
    put repeat ("-", 30)
    
    %Selection 1
    if number = 1 then   
    
        %Introduction and explanation of how the program works.
        put "Welcome to the Start, Stop, Step Game!"
        put "The program counts by a certain value from a start to end value."
        put "Ex. Inputting Start value: 10 , End value: 50, Step: 10" 
        put "Will have the program count by 10 from 10 to 50."
        
        %Beginning of "Start, Stop, Step" program loop.
        %Loop ennables user to rerun the program if they so choose once it ends.
        loop 
        
        %Variables for the storage of inputted values.
        var startvalue : int 
        var endvalue : int
        var step : int
        var number1 : int
        
        %Prompts for user input : 
        
        %Prompt for user to enter beginning value of count.
        put "Please input the start value below:"
        get startvalue
        
        %Prompt for user to enter ending value of count.
        put "Please input your end value below:"
        get endvalue
        
        %Prompt for user to enter the step, the interval by which the program will count by from beginning value to end value.
        put "Please input the step value below:"
        get step
        put repeat ("-", 30)
        
        %The program counts from the start value to the end value by the step.
        %Output statement where intervals are displayed, with a 500 milisecond delay in between each output.
        for i : startvalue .. endvalue by step
        put i
        delay (500)
        end for
        
        %This displays a prompt for the user to either exit the "Start, Stop, Step" program and return to the main menu by entering a 9 or rerun the program again by entering any number .
        put repeat ("-", 30)
        put "Thank you for playing this game!"
        put "Enter any number to play again" 
        put "Enter 9 to return to the main menu"
        get number1
            
        cls %Clear screen to display a clean main menu screen.
        
        %If number 9 is entered, it will fulfill the conditions for exiting this program and returning to the main menu. Otherwise, the condition will not be satisfied and the the program/loop will be rerun.
        exit when number1 = 9
        end loop 
            
            
            
    %Selection 2        
    elsif number = 2 then
    
        %Introduction and explanation of how the program works.
        put "Welcome to the Lottery Ticket Generator!"
        
        %Beginning of "Lottery Ticket Generator" program loop.
        %Loop ennables user to rerun the program if they so choose once it ends.
        loop
        
        %Variables for the storage of inputted values.
        var numoflottery : int
        var number2 : int
        var lotteryticket : int := 1
        
        %Prompt for user to input the number of lottery tickets that should be generated, dictating the number of times the "for looop" below will loop on itself to produce the desired number of lottery tickets.
        put "Please input the number of lottery tickets you would like"
        get numoflottery
        put repeat ("-", 30)
        
        %Output statement
        put "Your lottery ticket numbers are:"
        
            %The number of tickets the user desires, entered above, dictates the number of lottery tickets that will be displayed.
            for: 1 .. numoflottery
            
            %Accumulator to seperate different lottery tickets, so they make each lottery ticket clear to the user's eyes.
            put "Lottery ticket ", lotteryticket, " : " ..
                lotteryticket := lotteryticket + 1
                
                %Another for loop within to ensure that each lottery ticket consists of 6 random digits from 1 - 42.
                for: 1 .. 6
                put Rand.Int (1, 42), " " ..
                delay (100)
                end for
                put " "

            end for
        
        %This displays a prompt for the user to either exit the "Lottery Ticket Generator" program and return to the main menu by entering a 9 or rerun the program again by entering any number.
        put repeat ("-", 30)
        put "Thank you for using the lottery program!"
        put "Enter any number to play again" 
        put "Enter 9 to return to the main menu"
        get number2
        
        cls %Clear screen to display a clean main menu screen.
        
        %If number 9 is entered, it will fulfill the conditions for exiting this program and returning to the main menu. Otherwise, the condition will not be satisfied and the the program/loop will be rerun.
        exit when number2 = 9
        end loop
    
    
    
    %Selection 3
    elsif number = 3 then
    
        %Variables for the storage of inputted values.
        var petname : string
        var command : string
        var numoftimes : int
        var number3 : int
        
        %Introduction and explanation of how the program works.        
        put "Welcome to the Pet-Training program!"
        
        %Beginning of "Pet Training" program loop.
        %Loop ennables user to rerun the program if they so choose once it ends.
        loop

        %Prompt for user to enter the name of their pet.
        put "Please input your pet's name"
        get petname
        
        %Prompt for user to enter the command for their pet.
        put "Please input the command you wish to give your pet"
        get command
        
        %Prompt for user to enter the number of times they wish the command to be repeated.
        put "Please input the number of times you wish the command to be repeated"
        get numoftimes
        
        %Output statement
        %The value of the variable, "numoftimes", entered above by the user, dictates the number of times the command for the pet is repeated.
        for: 1 .. numoftimes
        put command, " ", petname, "!"
        end for
        
        %This displays a prompt for the user to either exit the "Pet Training" program and return to the main menu by entering a 9 or rerun the program again by entering any number.
        put repeat ("-", 30)
        put "Thank you for using this program!"
        put "Enter any number to run the program again" 
        put "Enter 9 to return to the main menu"
        get number3
        
        cls %Clear screen to display a clean main menu screen.
        
        %If number 9 is entered, it will fulfill the conditions for exiting this program and returning to the main menu. Otherwise, the condition will not be satisfied and the the program/loop will be rerun.
        exit when number3 = 9
        end loop
    
    
    
    %Selection 4
    elsif number = 4 then
    
        %Variables for the storage of inputted values.
        var numofloops : int := 0
        var moreorstop : string
        
        %Beginning of "Turing Counts Loops" program loop.
        %Loop ennables user to rerun the program if they so choose once it ends.
        loop            
        
        %Accumulator to display the number of times the loop has been executed/run, updated each run.
        numofloops := numofloops + 1
        
        %Output statement of how many times the loop has been executed (Output statement placed before intro and input statements for formatting/aesthetics purposes.
        put "Loop execution number ", numofloops
        
        %Introduction and explanation of how the program works.        
        %Prompt for the user to indicate whether they would like to run the program again (Input "more") or not (Input "stop").
        put "Please input \"more\" to continue to see the demonstration of the changing number of the loop execution caption above or input \"stop\" to exit this program. Any other input will result in the loop exectuting itself again."
        get moreorstop
            
        cls %Clear screen to display a clean main menu screen.
        
        %If "stop" is entered, it will fulfill the conditions for exiting this program and returning to the main menu. Otherwise, the condition will not be satisfied and the the program/loop will be rerun.
        %Exit or repeat program user prompt.
        exit when Str.Lower (moreorstop) = "stop" 
        end loop
            
            
            
    %Selection 5
    elsif number = 5 then
    
        %Variables for the storage of inputted values.
        var useranswer : string
        var numberofattempts : int := 1
        var number5 : int
        
        %Introduction and explanation of how the program works.
        put "Welcome to \"What does the cow say?\""
        put "Try your best to guess the sound made by a cow in as few attempts possible below!"
        
        %Prompt for user to enter their answer.
        put "Attempt number 1:"
        get useranswer
        
        %Output statement(s)
        %This is a loop for what the program should output according to the answer given by the user.
        loop
        
        %These if statements dictate the proper output response for the user's answers.
        %If the user got the answer on the first try, these statements are outputted and the option to exit the program and return to the main menu is displayed.
        if Str.Lower (useranswer) = "moo" then
            put "Correct!"
            put "It took you 1 try."
            put "Thank you for using this program!"
            put "Enter any number to run the program again" 
            put "Enter 9 to return to the main menu"
            get number5
        
        %If the user is incorrect on the first try, this section of the if statement is executed.
        else
            %This loop is meant to give the user as many attempts as they need to find the correct answer.
            loop
                %This accumulator keeps track of the number of attempts the user needs.
                numberofattempts := numberofattempts + 1
                
                %This statement is outputted to prompt the user to try again if incorrect.
                put "Sorry, that was incorrect. Please try again."                
                put "Attempt number ", numberofattempts, ":"
                get useranswer                

            %Once the user enters the correct answer, they exit the loop.
             exit when Str.Lower (useranswer) = "moo" 
             end loop
            
            %This output statement states the number of attempts the user needed.
             put "Correct!"
             put "It took you ", numberofattempts, " tries."
            
        end if            
            
            %The option to exit the program and return to the main menu is displayed.
            put repeat ("-", 30)
            put "Thank you for using this program!"
            put "Enter any number to run the program again" 
            put "Enter 9 to return to the main menu"
            get number5
        
            cls %Clear screen to display a clean main menu screen.
        
        %If number 9 is entered, it will fulfill the conditions for exiting this program and returning to the main menu. Otherwise, the condition will not be satisfied and the the program/loop will be rerun.
        exit when number5 = 9 
        end loop
        
        
        
    %Selection 6
    elsif number = 6 then
    
        %Variables for the storage of inputted values.
        var exponentinteger : int 
        var row : int := 13
        var number6 : int
        
        %Introduction and explanation of how the program works.        
        put "Welcome to Basic Exponents Math Help!"
        put "Here is a static table of values of the exponent values of integers from 1-10."
        put "Feel free to refer to this table for any math assignments!"
         
        %Output statement
        %The labels of the table is displayed with a fixed amount of space between the two columns they represent.
        put "Number \t Square"
        
        %This for loop outputts the contents of the table, with the integers on the left and exponent products on the right.
        for n : 1..10 by 1
        exponentinteger := n*n 
        put n, " \t ", exponentinteger
        row := row + 1
        end for
        
        %If any number is entered, it will fulfill the conditions for exiting this program and returning to the main menu. This is so because this program did not require any user input and is thus static. Rerunning the program will only display the same output, with no variables to be altered.
        put repeat ("-", 30)    
        put "Enter any number to return to the main menu"
        get number6
        
        cls %Clear screen to display a clean main menu screen.
        
        %Selection 7
        elsif number = 7 then
        
            %Variables for the storage of inputted values.
            var stop : int
            var number7 : int
            var multiples := 0
            
            %Introduction and explanation of how the program works.
            put "Welcome to the Mulitples of 5 Program!"
            put "This program will list the multiples of 5 between 100 and a number of your choosing between 100 and 50"
            
            %Beginning of "Multiples of 5" program loop
            %Loop ennables user to rerun the program if they so choose once it ends.
            loop
            
            %Prompt for user to enter a number between 50 and 100, a number that the program will count down to from 100 in intervals of five.
            put "What number between 100 and 50 do I stop at?"
            get stop
            
            %Precaution to keep user input to be within program parameters (Between 100 and 50) if the number entered is greater than 100 or smaller than 50. This prompts the user to enter a number that is within 100 and 50.
            if stop < 50 or stop > 100 then 
                loop
                put "Please input a number between 100 and 50"
                get stop
                exit when stop > 50 and stop < 100
                end loop
            end if
            
            %Output statement
            %This for loop outputs each multiple of 5 between 100 and the number specified by the user.
            for decreasing countdown : 100 .. stop by 5
                put countdown
                delay (1000)
                
                %This accumulator keeps track of the number of times this loop has been run and thus, the number of multiples between 100 and the specified number.
                multiples := multiples + 1
            end for
            
            %This statement indicates the number of multiples between 100 and the specified number.
            put repeat ("-", 30)
            put "There are ", multiples, " multiples of 5 betwwen 100 and ", stop

            %The option to exit the program and return to the main menu is displayed.
            put "Thank you for using this program!"
            put "Enter any number to run the program again" 
            put "Enter 9 to return to the main menu"
            get number7
            
            cls %Clear screen to display a clean main menu screen.
            
            %If number 9 is entered, it will fulfill the conditions for exiting this program and returning to the main menu. Otherwise, the condition will not be satisfied and the the program/loop will be rerun.
            exit when number7 = 9
            end loop
            
            
            
            %Selection 8
            elsif number = 8 then
            
                %Variables for the storage of inputted values.
                var numberofmarks : int
                var marknum : int := 1
                var mark : real
                var marksum : real := 0
                var markaverage : real 
                var markaverage1 :real
                var markaverage2 :real
                var markaveragefinal : real
                var number8 : int
                
                %Introduction and explanation of how the program works.
                put "Welcome to Calculating Mark Averages!"
                put "After following the instructions below and entering your set of marks, the average of this set will be displayed"
                loop
                
                %Prompt for user to enter the number of marks they wish to enter. This value is stored in the variable "numberofmarks".
                put "Please enter the number of marks you wish to enter"
                get numberofmarks
                
                %The value of the variable "numberofmarks" dictates the number of time the program will prompt the user to enter a mark.
                for : 1 .. numberofmarks
                put "Please enter Mark ", marknum 
                
                %Accumulator indicates the number of times the loop has been executed and can be interpreted as the ordinal number of each inputted mark (ex. Mark 1 (First Input), Mark 2 (Second Input), etc.).
                marknum := marknum + 1
                get mark 
                
                %Accumulator for the all the marks inputted by the user, to be divided by the number of marks inputted later on
                %The inputted mark for each loop is added to the total sum.
                marksum := marksum + mark
                
                end for
                
                %Calculating the average by dividing the sum of all the marks inputted by the user to be divided by the number of marks inputted.
                markaverage := marksum/numberofmarks
                
                %Rounding the average to the nearest hundredth.
                markaverage1 := markaverage*100
                markaverage2 := round (markaverage1)
                markaveragefinal := markaverage2/100
                
                %Output statement of the average of the set of marks inputted
                put "The average of this set of marks is: ", markaveragefinal
                
                %The option to exit the program and return to the main menu is displayed.
                put repeat ("-", 30)
                put "Thank you for using this program!"
                put "Enter any number to run the program again" 
                put "Enter 9 to return to the main menu"
                get number8
                
                cls %Clear screen to display a clean main menu screen.
                
                %If number 9 is entered, it will fulfill the conditions for exiting this program and returning to the main menu. Otherwise, the condition will not be satisfied and the the program/loop will be rerun.
                exit when number8 = 9
                end loop
            
            %If the number entered by the user is not applicable, they will be prompted to try again.
            else
            put "This number is not applicable. Please select a a number from 1-8 from the menu above."
    end if
end loop 
