% Turing 35, 45 overall. #1 and 2
% #2
% Write a program with three buttons side by side. All buttons labelled click
% me. When the user clicks on one of the buttons one of the three buttons 
% (randomly selected) is hidden. When the user clicks on another button, a
% different random button is hidden.  
import GUI

var button1 : int
var button2 : int
var button3 : int
var quitButton : int

procedure b1 
    var randbutton : int
    
    randint(randbutton, 1, 3)
    case randbutton of
	label 1 : 
	    GUI.Hide(button1)
	    GUI.Show(button2)
	    GUI.Show(button3)
	label 2 :
	    GUI.Hide(button2)
	    GUI.Show(button1)
	    GUI.Show(button3)
	label 3 : 
	    GUI.Hide(button3)
	    GUI.Show(button1)
	    GUI.Show(button2)
    end case
end b1

%main
button1 := GUI.CreateButton(10, 15, 3, "Click me :)", b1)
button2 := GUI.CreateButton(100, 15, 3, "Click me :))", b1)
button3 := GUI.CreateButton(195, 15, 3, "Click me :))))))))))", b1)
quitButton := GUI.CreateButton(400, 15, 3, "Quit ://", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
