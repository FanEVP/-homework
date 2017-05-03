%Turing34, 44 overall
% Use mouse procedures to write a program where a line comes trailing out 
% of the mouse no matter where you move it.

% Variation: The tail starts coming out of the mouse when you press down and
% stops once you release the button

var x, y, button : int
var isTrailing : boolean := false

procedure trail (x, y : int)
    var colour0 : int
    randint(colour0, 0, 255)

    drawfilloval(x, y, 25, 25, colour0)
end trail

loop
    if Mouse.ButtonMoved("down") then
	Mouse.Where(x, y, button)
	trail(x, y)
    end if
    exit when Mouse.ButtonMoved("up")
end loop
