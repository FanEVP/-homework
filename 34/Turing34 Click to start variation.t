%Turing34, 44 overall
% Use mouse procedures to write a program where a line comes trailing out
% of the mouse no matter where you move it.

% Variation: The tail coming out of the mouse only starts when you 
% depress the mouse button


var x, y, button : int
var isTrailing : boolean := false

procedure trail (x, y : int)
    var colour0 : int
    randint (colour0, 0, 255)

    drawfilloval (x, y, 25, 25, colour0)
end trail

procedure blanktrail (x, y : int)
    drawfilloval (x, y, 25, 25, 0)
end blanktrail

loop
    if Mouse.ButtonMoved ("down") then
	isTrailing := true
    end if

    if isTrailing then
	Mouse.Where (x, y, button)
	trail (x, y)
    end if
    Time.Delay(10)
end loop
