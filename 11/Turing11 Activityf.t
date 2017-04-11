% This is f). Recreate:
%     1 4 spaces
%    22 3
%   333 2
%  4444 1
% 55555 0

const ROWS := 5

for row : 1 .. ROWS
    for k : 1 .. ROWS - row
	put " " ..
    end for
    for m : 1 .. row
	put row ..
    end for
    put ""
end for













