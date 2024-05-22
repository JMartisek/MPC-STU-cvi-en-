function [nData] = normalize(data)
[x, y] = size(data);
maximum = max(max(data));
minimum = min(min(data));
range = maximum - minimum;


for i = 1:x
    for j = 1:y
        data(i,j) = (data(i,j) -minimum)/range;
    end

end

nData = data;
end

