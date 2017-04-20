% Turing 27, 37 overall
% 1. Create a GUI program with a button that prints a message to the user.
% 2. Add a second button which quits the program

import GUI

procedure put0
    put "Vilnius"
end put0

%main
var quitButton : int
var VilniusButton : int

VilniusButton := GUI.CreateButton(375, 50, 3, "Capital of Lithuania", put0)
quitButton := GUI.CreateButton(420, 25, 3, "Quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
