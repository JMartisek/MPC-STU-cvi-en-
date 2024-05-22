function [output] = divideData(data,k)
    output = zeros(size(data,1),3,k);
    for i = 1:size(data,1)
        output(i,:,data(i,3)) = data(i,:); 
    end
    disp("complete")
end

