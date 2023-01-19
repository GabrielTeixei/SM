function newX = Filter(x, f,limits)
%FILTER Summary of this function goes here
%   Detailed explanation goes here
%   limits is a array with the cuttoffs bellow at
%   limits(1) and above at limits(2)
%   return newX which is x that has been filtered.

    h = zeros(1,length(f));
    h(f > limits(1) & f < limits(2)) = 1;
    h(f > -limits(2) & f < -limits(1)) = 1;
    newX = x.*h';
end
