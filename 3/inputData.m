function [data] = inputData(ID, number_of_samples)
    rng(ID);
    x1_pluse = round((rand(number_of_samples/2, 1) * 0.6)*100);  % +
    x1_x = round((rand(number_of_samples/2, 1) * 0.6 + 0.4)*100);  % x
    x1 = [x1_pluse; x1_x];
    x2 = round((rand(number_of_samples, 1))*100);
    classes(1:number_of_samples/2) = 1; % +
    classes(number_of_samples/2:number_of_samples) = 2;%
    classes = classes';
    data = [x1 , x2, classes];
end

