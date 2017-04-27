%Turing30, Lesson 40 overall
% Create a GUI program with two buttons. One says Guessing Game and one says 
% Growing Button.  
% When they click on the guessing game button the original two buttons are 
% hidden and you play the higher / lower game until they guess your 
%(randomly generated) number.
% When they click on the button Growing Button Game, the original two buttons 
% disappear and they get a single button, which grows in size every time they 
% click on it.
% Finally, add a "BACK" button which clears the games or button and reloads the
% original screen.
% Don't forget your quit button (always!)

% This is the second version, which includes circles

import GUI
setscreen("graphics")

var backButton : int
var growingButton : int
var option_circles : int
var option_growing : int
var option_guessing : int
var quitButton : int

procedure backProc
    cls
    GUI.Hide(backButton)
    GUI.Show(option_growing)
    GUI.Show(option_guessing)
    GUI.Show(option_circles)
    GUI.Show(quitButton)
end backProc

procedure circlesProc
    var colour0 : int
    var rad : int
    var xcoor : int
    var ycoor : int

    GUI.Show(backButton)
    GUI.Hide(option_growing)
    GUI.Hide(option_guessing)
    randint(colour0, 0, 255)
    randint(xcoor, 0, maxx)
    randint(ycoor, 0, maxy)
    randint(rad, 1, 200)
    
    drawfilloval(xcoor, ycoor, rad, rad, colour0)
end circlesProc

procedure growingProc1
    GUI.Hide(option_growing)
    GUI.Hide(option_guessing)
    GUI.Hide(option_circles)
    GUI.Show(growingButton)
    GUI.Show(backButton)
end growingProc1

procedure growingProc2
    GUI.SetSize(growingButton, GUI.GetWidth(growingButton) + 10, GUI.GetHeight(growingButton) + 10)
end growingProc2

procedure guessingProc
    var guessedNumber : int    
    var randNumber : int
    
    GUI.Hide(option_growing)
    GUI.Hide(option_guessing)
    GUI.Hide(option_circles)
    GUI.Show(quitButton)

    
    randint(randNumber, 1, 1000)
    put "Guess a number between 1 and 1 000."
    loop
	put "Your guess: " ..
	get guessedNumber
	exit when guessedNumber = randNumber
	if guessedNumber > randNumber then
	    put "The number is smaller than ", guessedNumber, "."
	elsif guessedNumber < randNumber then
	    put "The number is bigger than ", guessedNumber, "."
	end if   
    end loop
    for k : 1 .. length("Congratulations!")
	    colour(k)
	    put "Congratulations!"(k) ..
	end for
    GUI.Show(backButton)
end guessingProc

option_growing := GUI.CreateButton(150, 10, 20, "Growing Game", growingProc1)
option_guessing := GUI.CreateButton(300, 10, 20, "Guessing Game", guessingProc)
option_circles := GUI.CreateButton(450, 10, 20, "Circles", circlesProc)
growingButton := GUI.CreateButton(10, 10, 20, "Click me :D", growingProc2)
backButton := GUI.CreateButton(580, 10, 20, "Back", backProc)
quitButton := GUI.CreateButton(500, 300, 20, "Quit", GUI.Quit)

GUI.Hide(backButton)
GUI.Hide(growingButton)

loop
    exit when GUI.ProcessEvent
end loop
