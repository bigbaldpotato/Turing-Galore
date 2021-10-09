% Whack a Star
% by Jim Xu
% Nov 11, 2020
% This is a variation of the game of whack a mole, but with simple boxes instead. A predetermined number of boxes will appear at random and the user must attempt to catch and click on each box to attain a score. 

var mx,my,button:int
var screen : string := ""

% Clickable button for starting the game 
procedure drawMenu()

    %Lengths and widths are stored in variables for efficiency if dimensions need to be edited 
    var bW:=250
    var bH:=50
    
    var bX1:=225
    var bY1:=250
    
    % Box for customizable box is drawn
    drawbox(bX1, bY1,bX1+bW,bY1+bH,black)
    Draw.Text("Play", bX1+100, bY1+25, defFontId, red)
    
    % When the user clicks within the box, the game will begin by calling upon the game procedure
    if mx>bX1 and mx<bX1+bW and  my>bY1 and my<bY1+bH and button = 1 then
        screen:="Play"
    end if
    
end drawMenu

% This procedure will place a box at a given x and y, with a given size and colour
procedure placebox (x : int, y : int, size : int, col : int)
    
    % Randomly generated size will be the amount that will be added to the x, y coordinates to attain a different second point whilst maintiaining a square like shape
    % The box will be generated at a random location dictated by the randomly generated aspects within the drawAnimation prodcedure
    Draw.FillBox (x, y, x + size, y + size, col)
    
end placebox

% This procedure holds the code for the game
procedure drawAnimation()

    %Variables to store different values essential to the function of the game
    var randomx : int
    var randomy : int
    var rancol : int
    var ransize : int
    var randomx2 : int
    var randomy2 : int
    var SquaresRun : int := 0
    var SquaresWhacked : int :=0
    var MisClicks : int := 0
    var curtime : string
    var pass : string := ""
    var Score : real := 0
    
    % Mouse location variables
    var mx, my, button : int
    
    % Variable used as safeguard to prevent loop from counting the same click more than once as it loops on itself at a high freqeuncy(to maintain couting and score accuracy)
    var mouseclick:int := 0
    
    % 10 squares will be spawned consecutively at different time intervals
    for : 1..10
        
        % Random generation of the different aspects of the square
        randint(randomx,0,600)
        randint(randomy,0,400)
        randint(rancol,0,255)
        randint(ransize,25,75)
    
        
        % Box with random aspects is spawned and outputted on to the screen once the variables randomx,randomy,ransize,rancol have been plugged into the placebox procedure that has been called
        placebox(randomx,randomy,ransize,rancol)    
        
        % Since the x, y coordinates of the second point are determined by adding the randomly generated size to the x, y coordinates of the first point, they are consolidated into two seperate variables that act as boundaries of the square for calculating hits or misses in the window for user input
        randomx2:=randomx+ransize
        randomy2:=randomy+ransize
        
        % The current time, when the window for user input begins, is extracted as seconds since 1970
        var timestart : int
        timestart:=Time.Sec
        
        % This variable will store the time at the beginning of each loop as seconds since 1970
        var curtimes : int
        
        % Time window for user to click on square
        loop
        
        % Constantly updates location of the mouse every execution of the loop
        mousewhere(mx,my,button)
        curtimes:=Time.Sec
        
        % If the click is within the box boundaries (box formed by the two opposite coordinate points), then it is counted as a hit/square whacked     
        if mx>randomx and my>randomy and mx<randomx2 and my<randomy2 and button = 1 and mouseclick = 0 then
        SquaresWhacked:=SquaresWhacked+1
        % The variable pass is given the value "exit" that will allow it to meet the loop's exit conditions and exit the loop before the time runs out for another square to be spawned
        pass:="exit"
        
        % If the click is outside the box boundaries, then it is counted as a miss and the loop will continue until either time runs out or the user its the square on the next loops. Misclicks are accumulated.
        elsif button = 1 and mouseclick = 0 then
        MisClicks:=MisClicks+1
        pass:=""
        % Mouseclick is given a value to prevent the program from counting a single click as multiple clicks over the course of many loops (For example, if the loop ran at 1000 cycles per second, then a user holding down the mouse for 2 seconds after missing would be counted as 2000 misses). Therefore, this click will not be counted again once the loop loops again as the conditions for the statements above require mouseclick to equal 0.
        mouseclick:=1
        
        end if
        
        %Prevent the loop from continuing to add if mouse continues to be held down
        if mouseclick = 0 and button = 1 then %User is still holding mouse down
        mouseclick:=1
        elsif mouseclick = 1 and button = 0 then %Reset for a new click once the user lifts their finger
        mouseclick:=0
        end if
        
        % If the difference between the starting time and the time extracted at the beginning of each loop is equal to 2, the window will close and a new square is spawned.
        exit when curtimes-timestart > 2 or pass = "exit"
        
        end loop
        
        cls
        
        % Pass varaible is reset for new loop
        pass:=""
        
        % The number of squares spawned is calculated by accumulating the number of times the for loop has run
        SquaresRun:=SquaresRun+1
        
    end for
    
    % Results are displayed
    put "Number of squares run: ", SquaresRun
    put "Number of squares whacked: ", SquaresWhacked
    put "Number of misses: ", MisClicks
    
    % Safeguard against mathematical error if user missed none (You can't divide something by 0)
    if MisClicks = 0 then
    MisClicks :=1
    end if
    
    % Score is calculated
    Score:=(SquaresRun/MisClicks)*SquaresWhacked
    
    put "Your final score is ", Score
    
    % Allows for user to replay
    put "Enter any key to play again" 
    Input.Pause
end drawAnimation


%Main program start
loop
    % Instructions
    put repeat ("-", 80)
    put repeat (" ", 22), "Whack a Square Mole!"
    put repeat ("-", 80)
    put "The instructions are as follows:"
    put "Try to hit as many boxes as you can as they show up! Share your results with your friends and invite them to join you in the fun!"
    put "Click to play!"
    
loop
    mousewhere(mx,my,button)   
    drawMenu
    
    % Once the play button in the drawMenu procedure has been selected, the game procedure is called
    if screen = "Play" then
        cls
        drawAnimation
    end if
end loop
end loop
