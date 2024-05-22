clc
clear all
ID = 230127;
binID = dec2bin(ID);
numberOfAtributtes = 4;

IDData = binID(1,end-15:end);
MyData = [0,0,0,0;
0,0,0,1;
0,0,1,0;
0,0,1,1;
0,1,0,0;
0,1,0,1;
0,1,1,0;
0,1,1,1;
1,0,0,0;
1,0,0,1;
1,0,1,0;
1,0,1,1;
1,1,0,0;
1,1,0,1;
1,1,1,0;
1,1,1,1];    

for i = 1:16
    MyData(i,5) = str2num(IDData(i));  
end


%% v
clc
numberOfIterations = 10;
minErr = zeros(numberOfIterations,1);
figure(1)
title("err func")
for i = 1:numberOfIterations
    disp("iteration " + i)
    J = randi([1, 4], 100, 7);
    err = tree(J,MyData);
    disp(min(err))
    minErr(i) = min(err);
    J = crossOver(J);
    subplot(2,5,i)
    plot(sort(err))
end

disp(min(minErr)+"   " + max(minErr))

%% otazky
% Pocet vsech pripustnych jedincu(variace s opakovanim): 16384
% v uloze pouzito: 1000 tj. pouzito bylo 6.1%
% nejlepsi jedinec neni v posledni generaci, protoze pro delici algoritmus
% nevyuzivame pouze nejlepsiho jedince z predchozi generace
% geneticke algoritmy vysly o neco malo mene presne, ale jejich velka
% vyhoda je, ze se neseknou na lokalnim minimu 0.175 X 0.1875