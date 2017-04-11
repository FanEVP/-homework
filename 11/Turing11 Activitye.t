% This is e). Recreate:
%    $
%   $$$
%  $$$$$
% $$$$$$$

const ROWS := 4

for row : 1 .. ROWS
    for k : 1 .. ROWS - row
	put " " ..
    end for
    for l : 1 .. row + (row - 1)
	put "$" ..
    end for
    put ""
end for













