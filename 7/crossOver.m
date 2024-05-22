function [J] = crossOver(J)
crossIndex = randi([1,6]);
tmp = zeros(7,1);
for i = 1:2:99
    tmp(1:crossIndex) = J(i,1:crossIndex);
    tmp(crossIndex+1:end) = J(i+1,crossIndex+1:end);
    J(i+1,crossIndex+1:end) = J(i,crossIndex+1:end);
    J(i,:) = tmp;

end

