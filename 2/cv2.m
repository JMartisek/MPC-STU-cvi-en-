clc
clear all
input = readtable("input.txt");
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

tmp = [];
for i = 1:16
    tmp(i,1) = str2num(IDData(i));
    
end

for j = 1:16
    MyData(j,5) = tmp(j,1);
end
%% werks 
vstupy = [1 2 3 4];
[a, b] = tree(MyData, size(MyData,2)-2,vstupy);








