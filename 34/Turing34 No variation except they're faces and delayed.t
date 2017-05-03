%Turing34, 44 overall
% Use mouse procedures to write a program where a line comes trailing out 
% of the mouse no matter where you move it.

var x, y, button : int

procedure trail (x, y : int)
    var colour0 : int
    randint(colour0, 0, 255)
    
    drawfilloval(x, y, 25, 25, colour0)
    
    if colour0 >= 0 and colour0 <= 7 then
	drawfilloval(x - 7, y + 2, 3, 7, white)
	drawfilloval(x + 7, y + 2, 3, 7, white)
	drawarc(x, y - 12, 10, 7, 180, 0, white)
    elsif colour0 >= 15 and colour0 <= 26 then
	drawfilloval(x - 7, y + 2, 3, 7, white)
	drawfilloval(x + 7, y + 2, 3, 7, white)
	drawarc(x, y - 12, 10, 7, 180, 0, white)
    elsif colour0 >= 104 and colour0 <= 255 then
	drawfilloval(x - 7, y + 2, 3, 7, white)
	drawfilloval(x + 7, y + 2, 3, 7, white)
	drawarc(x, y - 12, 10, 7, 180, 0, white)
    else
	drawfilloval(x - 7, y + 2, 3, 7, black)
	drawfilloval(x + 7, y + 2, 3, 7, black)
	drawarc(x, y - 12, 10, 7, 180, 0, black)
    end if
end trail

loop
    Mouse.Where (x, y, button)
    trail(x, y)
    Time.Delay(10)
end loop
