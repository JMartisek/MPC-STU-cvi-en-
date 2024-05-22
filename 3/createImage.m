function [] = createImage(output, indexOfFigure)
% JEBE
image = zeros(100,100,3);

for i = 1:size(output,1)
    for j = 1:size(output,2)
        if output(i,j) ==1
            image(i,j,1) =0.5;
        else
            image(i,j,2) = 0.5;
        end
    end
end
figure(indexOfFigure)
imshow(image)
end

