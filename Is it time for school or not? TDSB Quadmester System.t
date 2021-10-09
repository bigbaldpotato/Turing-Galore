%Asynchronous or Synchronous Learning?
%by Jim Xu
%October 23, 2020
%This program was written to tell the user if they have synnchronous or asynchronous learning on each day of Bethune's Cohort Based Day 1-4 schedule during the pandemic

%Intro
put repeat ("-", 80)
put repeat (" ", 22), "Asynchronous or Synchronous Learning?"
put repeat ("-", 80)



%This variable "curtime", holds the current time extracted from the operating system by the program in hh/mmm/ss format
var curtime: string
time (curtime)

%Extracting hour of day from the variable "curtime" to determine if the time of day is AM or PM
var curhour := curtime (1 .. 2)

%Results of this process of determining whether the time is before noon or after noon will be stored in these variables
var inthour: int
var ampm : string
var greetingstype : string

    %Converting the string type of "curhour" to an integer type to be stored in variable "inthour"
    if strintok (curhour) then 
    inthour := strint (curhour)
    end if 
    
    %Determining whether the time of day is after noon or before noon and storing said result in variable "ampm"
    if inthour>=12 then 
        ampm := "PM"
    elsif inthour<12 then
        ampm := "AM"
    end if
    
    %Determining which greeting to use in the user prompt
    if ampm = "PM" then
        greetingstype := "afternoon"
    elsif ampm = "AM" then
        greetingstype := "morning"
    end if

%These variables extract and store the minutes of the current time, so they may be used to pinpoint the time on a student's schedule, down to the minute so if a certain part of the schedule ends or begins between hourly intervals, the program may output an accurate statement, reflective of the student's schedule in accordance with the time of day
var curmin := curtime (4 .. 5)

var intmin : int

    if strintok (curmin) then
    intmin := strint (curmin)
    end if

%These variables store the user inputs of their associated cohort, the day in Bethune's 4-day schedule and whether today is a school day or the weekend
var today : string
var day : int
var cohort : string

%Greetings and user prompt to enter timetable information, in particular, the cohort they're in
put "Good ", greetingstype, "! The current time is ", curtime, " ", ampm
put "Please indicate whether today is a school day or a weekend"
get today:*

if today = "school day" then
    put "Please input the day of Bethune's four day schedule as an integer"
    get day

    put "Please input your cohort as A or B"
    get cohort

    %Schedule for Cohort A on Day 1
    if Str.Lower (today) = "school day" and 8>inthour and day = 1 and Str.Lower (cohort) = "a" then
        put "Get ready for your in person class at Bethune at 8:45 AM."    
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin<45 and day = 1 and Str.Lower (cohort) = "a" then
        put "Get ready for your in person class at Bethune at 8:45 AM."
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin = 45 and day = 1 and Str.Lower (cohort) = "a" then
        put "In person class at Bethune begins now!"
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin>45 and day = 1 and Str.Lower (cohort) = "a" then
        put "You currently have in person learning at Bethune till 12:30 PM."
    elsif Str.Lower (today) = "school day" and 12>inthour and inthour>9 and day = 1 and Str.Lower (cohort) = "a" then
        put "You currently have in person learning at Bethune till 12:30 PM."
    elsif Str.Lower (today) = "school day" and inthour = 12 and intmin<30 and day = 1 and Str.Lower (cohort) = "a" then
        put "You currently have in person learning at Bethune till 12:30 PM."
    elsif Str.Lower (today) = "school day" and inthour = 12 and intmin = 30 and day = 1 and Str.Lower (cohort) = "a" then
        put "In person class at Bethune has ended. Please have lunch in the next 1 and a half hour till 2:00 PM."
    elsif Str.Lower (today) = "school day" and 12>inthour and intmin>30 and day = 1 and Str.Lower (cohort) = "a" then
        put "In person class at Bethune has ended. You should be having lunch currently before your online class at 2:00 PM"
    elsif Str.Lower (today) = "school day" and inthour = 13 and day = 1 and Str.Lower (cohort) = "a" then
        put "In person class at Bethune has ended. You should be having lunch currently before your online class at 2:00 PM"
    elsif Str.Lower (today) = "school day" and inthour = 14 and day = 1 and Str.Lower (cohort) = "a" then
        put "You currently have an online class till 3:15 PM."
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin<15 and day = 1 and Str.Lower (cohort) = "a" then
        put "You currently have an online class till 3:15 PM."
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin = 15 and day = 1 and Str.Lower (cohort) = "a" then
        put "Your online class session is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin>15 and day = 1 and Str.Lower (cohort) = "a" then
        put "You online class session is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
    elsif Str.Lower (today) = "school day" and inthour>15 and day = 1 and Str.Lower (cohort) = "a" then
        put "Your school day is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"


    %Schedule for Cohort B on Day 1
    elsif Str.Lower (today) = "school day" and 8>inthour and day = 1 and Str.Lower (cohort) = "b" then
        put "Hooray! You don't have to go to school today! However, get ready for your asynchronous learning at home at 8:45 AM."
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin<45 and day = 1 and Str.Lower (cohort) = "b" then
        put "Hooray! You don't have to go to school today! However, get ready for your asynchronous learning at home at 8:45 AM."
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin = 45 and day = 1 and Str.Lower (cohort) = "b" then
        put "Asynchronous learning at home begins now!"
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin>45 and day = 1 and Str.Lower (cohort) = "b" then
        put "You currently have asynchronous learning at home till 12:30 PM."
    elsif Str.Lower (today) = "school day" and 12>inthour and inthour>9 and day = 1 and Str.Lower (cohort) = "b" then
        put "You currently have asynchronous learning at home till 12:30 PM."
    elsif Str.Lower (today) = "school day" and inthour = 12 and intmin<30 and day = 1 and Str.Lower (cohort) = "b" then
        put "You currently have asynchronous learning at home till 12:30 PM."
    elsif Str.Lower (today) = "school day" and inthour = 12 and intmin = 30 and day = 1 and Str.Lower (cohort) = "b" then
        put "Asynchronous learning at home has ended. Please have lunch in the next 1 and a half hour till 2:00 PM."
    elsif Str.Lower (today) = "school day" and 12>inthour and intmin>30 and day = 1 and Str.Lower (cohort) = "b" then
        put "Asynchronous learning at home has ended. You should be having lunch currently before your online class at 2:00 PM"
    elsif Str.Lower (today) = "school day" and inthour = 13 and day = 1 and Str.Lower (cohort) = "b" then
        put "Asynchronous learning at home has ended. You should be having lunch currently before your online class at 2:00 PM"
    elsif Str.Lower (today) = "school day" and inthour = 14 and day = 1 and Str.Lower (cohort) = "b" then
        put "You currently have an online class till 3:15 PM."
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin<15 and day = 1 and Str.Lower (cohort) = "b" then
        put "You currently have an online class till 3:15 PM."
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin = 15 and day = 1 and Str.Lower (cohort) = "b" then
        put "Your online class session is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin>15 and day = 1 and Str.Lower (cohort) = "b" then
        put "You online class session is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"    
    elsif Str.Lower (today) = "school day" and inthour = 15 and day = 1 and Str.Lower (cohort) = "b" then
        put "Your school day is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
    elsif Str.Lower (today) = "school day" and inthour>15 and day = 1 and Str.Lower (cohort) = "b" then
        put "Your school day is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
 

    %Schedule for Cohort A on Day 2
    elsif Str.Lower (today) = "school day" and 8>inthour and day = 2 and Str.Lower (cohort) = "a" then
        put "Hooray! You don't have to go to school today! However, get ready for your asynchronous learning at home at 8:45 AM."
      elsif Str.Lower (today) = "school day" and inthour = 8 and intmin<45 and day = 2 and Str.Lower (cohort) = "a" then
        put "Hooray! You don't have to go to school today! However, get ready for your asynchronous learning at home at 8:45 AM."
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin = 45 and day = 2 and Str.Lower (cohort) = "a" then
        put "Asynchronous learning at home begins now!"
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin>45 and day = 2 and Str.Lower (cohort) = "a" then
        put "You currently have asynchronous learning at home till 12:30 PM."
    elsif Str.Lower (today) = "school day" and 12>inthour and inthour>9 and day = 2 and Str.Lower (cohort) = "a" then
        put "You currently have asynchronous learning at home till 12:30 PM."
    elsif Str.Lower (today) = "school day" and inthour = 12 and intmin<30 and day = 2 and Str.Lower (cohort) = "a" then
        put "You currently have asynchronous learning at home till 12:30 PM."
    elsif Str.Lower (today) = "school day" and inthour = 12 and intmin = 30 and day = 2 and Str.Lower (cohort) = "a" then
        put "Asynchronous learning at home has ended. Please have lunch in the next 1 and a half hour till 2:00 PM."
    elsif Str.Lower (today) = "school day" and 12>inthour and intmin>30 and day = 2 and Str.Lower (cohort) = "a" then
        put "Asynchronous learning at home has ended. You should be having lunch currently before your online class at 2:00 PM"
    elsif Str.Lower (today) = "school day" and inthour = 13 and day = 2 and Str.Lower (cohort) = "a" then
        put "Asynchronous learning at home has ended. You should be having lunch currently before your online class at 2:00 PM"
    elsif Str.Lower (today) = "school day" and inthour = 14 and day = 2 and Str.Lower (cohort) = "a" then
        put "You currently have an online class till 3:15 PM."
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin<15 and day = 2 and Str.Lower (cohort) = "a" then
        put "You currently have an online class till 3:15 PM."
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin = 15 and day = 2 and Str.Lower (cohort) = "a" then
        put "Your online class session is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin>15 and day = 2 and Str.Lower (cohort) = "a" then
        put "You online class session is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
    elsif Str.Lower (today) = "school day" and inthour>15 and day = 2 and Str.Lower (cohort) = "a" then
        put "Your school day is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
    
    
    %Schedule for Cohort B on Day 2
    elsif Str.Lower (today) = "school day" and 8>inthour and day = 2 and Str.Lower (cohort) = "b" then
        put "Get ready for your in person class at Bethune at 8:45 AM."
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin<45 and day = 2 and Str.Lower (cohort) = "b" then
        put "Get ready for your in person class at Bethune at 8:45 AM."    
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin = 45 and day = 2 and Str.Lower (cohort) = "b" then
        put "In person class at Bethune begins now!"
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin>45 and day = 2 and Str.Lower (cohort) = "b" then
        put "You currently have in person learning at Bethune till 12:30 PM."
    elsif Str.Lower (today) = "school day" and 12>inthour and inthour>9 and day = 2 and Str.Lower (cohort) = "b" then
        put "You currently have in person learning at Bethune till 12:30 PM."
    elsif Str.Lower (today) = "school day" and inthour = 12 and intmin<30 and day = 2 and Str.Lower (cohort) = "b" then
        put "You currently have in person learning at Bethune till 12:30 PM."
    elsif Str.Lower (today) = "school day" and inthour = 12 and intmin = 30 and day = 2 and Str.Lower (cohort) = "b" then
        put "In person class at Bethune has ended. Please have lunch in the next 1 and a half hour till 2:00 PM."
    elsif Str.Lower (today) = "school day" and 12>inthour and intmin>30 and day = 2 and Str.Lower (cohort) = "b" then
        put "In person class at Bethune has ended. You should be having lunch currently before your online class at 2:00 PM"
    elsif Str.Lower (today) = "school day" and inthour = 13 and day = 2 and Str.Lower (cohort) = "b" then
        put "In person class at Bethune has ended. You should be having lunch currently before your online class at 2:00 PM"
    elsif Str.Lower (today) = "school day" and inthour = 14 and day = 2 and Str.Lower (cohort) = "b" then
        put "You currently have an online class till 3:15 PM."
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin<15 and day = 2 and Str.Lower (cohort) = "b" then
        put "You currently have an online class till 3:15 PM."
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin = 15 and day = 2 and Str.Lower (cohort) = "b" then
        put "Your online class session is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin>15 and day = 2 and Str.Lower (cohort) = "b" then
        put "You online class session is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
    elsif Str.Lower (today) = "school day" and inthour>15 and day = 2 and Str.Lower (cohort) = "b" then
        put "Your school day is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"


%Schedule for Cohort A on Day 3
    elsif Str.Lower (today) = "school day" and 8>inthour and day = 3 and Str.Lower (cohort) = "a" then
        put "Get ready for your in person class at Bethune at 8:45 AM."
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin<45 and day = 3 and Str.Lower (cohort) = "a" then
        put "Get ready for your in person class at Bethune at 8:45 AM."  
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin = 45 and day = 3 and Str.Lower (cohort) = "a" then
        put "In person class at Bethune begins now!"
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin>45 and day = 3 and Str.Lower (cohort) = "a" then
        put "You currently have in person learning at Bethune till 12:30 PM."
    elsif Str.Lower (today) = "school day" and 12>inthour and inthour>9 and day = 3 and Str.Lower (cohort) = "a" then
        put "You currently have in person learning at Bethune till 12:30 PM."
    elsif Str.Lower (today) = "school day" and inthour = 12 and intmin<30 and day = 3 and Str.Lower (cohort) = "a" then
        put "You currently have in person learning at Bethune till 12:30 PM."
    elsif Str.Lower (today) = "school day" and inthour = 12 and intmin = 30 and day = 3 and Str.Lower (cohort) = "a" then
        put "In person class at Bethune has ended. Please have lunch in the next 1 and a half hour till 2:00 PM."
    elsif Str.Lower (today) = "school day" and 12>inthour and intmin>30 and day = 3 and Str.Lower (cohort) = "a" then
        put "In person class at Bethune has ended. You should be having lunch currently before your online class at 2:00 PM"
    elsif Str.Lower (today) = "school day" and inthour = 13 and day = 3 and Str.Lower (cohort) = "a" then
        put "In person class at Bethune has ended. You should be having lunch currently before your online class at 2:00 PM"
    elsif Str.Lower (today) = "school day" and inthour = 14 and day = 3 and Str.Lower (cohort) = "a" then
        put "You currently have an online class till 3:15 PM."
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin<15 and day = 3 and Str.Lower (cohort) = "a" then
        put "You currently have an online class till 3:15 PM."
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin = 15 and day = 3 and Str.Lower (cohort) = "a" then
        put "Your online class session is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin>15 and day = 3 and Str.Lower (cohort) = "a" then
        put "You online class session is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
    elsif Str.Lower (today) = "school day" and inthour>15 and day = 3 and Str.Lower (cohort) = "a" then
        put "Your school day is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"


    %Schedule for Cohort B on Day 3
    elsif Str.Lower (today) = "school day" and 8>inthour and day = 3 and Str.Lower (cohort) = "b" then
        put "Hooray! You don't have to go to school today! However, get ready for your asynchronous learning at home at 8:45 AM."
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin<45 and day = 3 and Str.Lower (cohort) = "b" then
        put "Hooray! You don't have to go to school today! However, get ready for your asynchronous learning at home at 8:45 AM."
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin = 45 and day = 3 and Str.Lower (cohort) = "b" then
        put "Asynchronous learning at home begins now!"
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin>45 and day = 3 and Str.Lower (cohort) = "b" then
        put "You currently have asynchronous learning at home till 12:30 PM."
    elsif Str.Lower (today) = "school day" and 12>inthour and inthour>9 and day = 3 and Str.Lower (cohort) = "b" then
        put "You currently have asynchronous learning at home till 12:30 PM."
    elsif Str.Lower (today) = "school day" and inthour = 12 and intmin<30 and day = 3 and Str.Lower (cohort) = "b" then
        put "You currently have asynchronous learning at home till 12:30 PM."
    elsif Str.Lower (today) = "school day" and inthour = 12 and intmin = 30 and day = 3 and Str.Lower (cohort) = "b" then
        put "Asynchronous learning at home has ended. Please have lunch in the next 1 and a half hour till 2:00 PM."
    elsif Str.Lower (today) = "school day" and 12>inthour and intmin>30 and day = 3 and Str.Lower (cohort) = "b" then
        put "Asynchronous learning at home has ended. You should be having lunch currently before your online class at 2:00 PM"
    elsif Str.Lower (today) = "school day" and inthour = 13 and day = 3 and Str.Lower (cohort) = "b" then
        put "Asynchronous learning at home has ended. You should be having lunch currently before your online class at 2:00 PM"
    elsif Str.Lower (today) = "school day" and inthour = 14 and day = 3 and Str.Lower (cohort) = "b" then
        put "You currently have an online class till 3:15 PM."
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin<15 and day = 3 and Str.Lower (cohort) = "b" then
        put "You currently have an online class till 3:15 PM."
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin = 15 and day = 3 and Str.Lower (cohort) = "b" then
        put "Your online class session is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin>15 and day = 3 and Str.Lower (cohort) = "b" then
        put "You online class session is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
    elsif Str.Lower (today) = "school day" and inthour>15 and day = 3 and Str.Lower (cohort) = "b" then
        put "Your school day is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
 

    %Schedule for Cohort A on Day 4
    elsif Str.Lower (today) = "school day" and 8>inthour and day = 4 and Str.Lower (cohort) = "a" then
        put "Hooray! You don't have to go to school today! However, get ready for your asynchronous learning at home at 8:45 AM."
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin<45 and day = 4 and Str.Lower (cohort) = "a" then
        put "Hooray! You don't have to go to school today! However, get ready for your asynchronous learning at home at 8:45 AM."
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin = 45 and day = 4 and Str.Lower (cohort) = "a" then
        put "Asynchronous learning at home begins now!"
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin>45 and day = 4 and Str.Lower (cohort) = "a" then
        put "You currently have asynchronous learning at home till 12:30 PM."
    elsif Str.Lower (today) = "school day" and 12>inthour and inthour>9 and day = 4 and Str.Lower (cohort) = "a" then
        put "You currently have asynchronous learning at home till 12:30 PM."
    elsif Str.Lower (today) = "school day" and inthour = 12 and intmin<30 and day = 4 and Str.Lower (cohort) = "a" then
        put "You currently have asynchronous learning at home till 12:30 PM."
    elsif Str.Lower (today) = "school day" and inthour = 12 and intmin = 30 and day = 4 and Str.Lower (cohort) = "a" then
        put "Asynchronous learning at home has ended. Please have lunch in the next 1 and a half hour till 2:00 PM."
    elsif Str.Lower (today) = "school day" and 12>inthour and intmin>30 and day = 4 and Str.Lower (cohort) = "a" then
        put "Asynchronous learning at home has ended. You should be having lunch currently before your online class at 2:00 PM"
    elsif Str.Lower (today) = "school day" and inthour = 13 and day = 4 and Str.Lower (cohort) = "a" then
        put "Asynchronous learning at home has ended. You should be having lunch currently before your online class at 2:00 PM"
    elsif Str.Lower (today) = "school day" and inthour = 14 and day = 4 and Str.Lower (cohort) = "a" then
        put "You currently have an online class till 3:15 PM."
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin<15 and day = 4 and Str.Lower (cohort) = "a" then
        put "You currently have an online class till 3:15 PM."
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin = 15 and day = 4 and Str.Lower (cohort) = "a" then
        put "Your online class session is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin>15 and day = 4 and Str.Lower (cohort) = "a" then
        put "You online class session is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
    elsif Str.Lower (today) = "school day" and inthour>15 and day = 4 and Str.Lower (cohort) = "a" then
        put "Your school day is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
    
    
    %Schedule for Cohort B on Day 4
    elsif Str.Lower (today) = "school day" and 8>inthour and day = 4 and Str.Lower (cohort) = "b" then
        put "Get ready for your in person class at Bethune at 8:45 AM."
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin<45 and day = 4 and Str.Lower (cohort) = "b" then
        put "Get ready for your in person class at Bethune at 8:45 AM."      
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin = 45 and day = 4 and Str.Lower (cohort) = "b" then
        put "In person class at Bethune begins now!"
    elsif Str.Lower (today) = "school day" and inthour = 8 and intmin>45 and day = 4 and Str.Lower (cohort) = "b" then
        put "You currently have in person learning at Bethune till 12:30 PM."
    elsif Str.Lower (today) = "school day" and 12>inthour and inthour>9 and day = 4 and Str.Lower (cohort) = "b" then
        put "You currently have in person learning at Bethune till 12:30 PM."
    elsif Str.Lower (today) = "school day" and inthour = 12 and intmin<30 and day = 4 and Str.Lower (cohort) = "b" then
        put "You currently have in person learning at Bethune till 12:30 PM."
    elsif Str.Lower (today) = "school day" and inthour = 12 and intmin = 30 and day = 4 and Str.Lower (cohort) = "b" then
        put "In person class at Bethune has ended. Please have lunch in the next 1 and a half hour till 2:00 PM."
    elsif Str.Lower (today) = "school day" and 12>inthour and intmin>30 and day = 4 and Str.Lower (cohort) = "b" then
        put "In person class at Bethune has ended. You should be having lunch currently before your online class at 2:00 PM"
    elsif Str.Lower (today) = "school day" and inthour = 13 and day = 4 and Str.Lower (cohort) = "b" then
        put "In person class at Bethune has ended. You should be having lunch currently before your online class at 2:00 PM"
    elsif Str.Lower (today) = "school day" and inthour = 14 and day = 4 and Str.Lower (cohort) = "b" then
        put "You currently have an online class till 3:00 PM."
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin<15 and day = 4 and Str.Lower (cohort) = "b" then
        put "You currently have an online class till 3:15 PM."
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin = 15 and day = 4 and Str.Lower (cohort) = "b" then
        put "Your online class session is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
    elsif Str.Lower (today) = "school day" and inthour = 15 and intmin>15 and day = 4 and Str.Lower (cohort) = "b" then
        put "You online class session is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
    elsif Str.Lower (today) = "school day" and inthour>15 and day = 4 and Str.Lower (cohort) = "b" then
        put "Your school day is over. Finish any assigned work that you may have and you're free to enjoy the rest of your day!"
    end if
    
    
%If the day is not a weekend, the following statement will be outputted
elsif Str.Lower (today) = "weekend" then
    put "Hooray! Today is the weekend! Lay back on your chair and relax. Or if you have work to do, it is recommended that you try to catch up. New content awaits you on Monday!"
end if

