clc
clear 
close all

%% robicz

data = readtable("DataEX08.txt");


%% idk


%y = data.Var2(1) + theta*data.Var1(:);

p = polyfit(data.Var1,data.Var2,1); % p is coefficient of your polynomial: P(X) = P(1)*X^N + P(2)*X^(N-1) +...+ P(N)*X + P(N+1) descending order.
newY = polyval(p,data.Var1); % function results

%% znova

theta = [0 0];

[cost, theta, costM, thetaM] = GradDescemtFnc(data.Var1,data.Var2,theta, 10000,0.0248);%0.0248
cost(1000);
value = theta(1) + theta(2)*data.Var1(:);
modified = thetaM(1) + thetaM(2)*data.Var1(:);

%% a
figure(2)
plot(data.Var1,data.Var2,'x','Color','r')
hold on
plot(data.Var1,newY,'Color','b');
plot(data.Var1,value, 'Color','g')
%plot(data.Var1,modified, 'Color','c')
legend("data", "polyfit","My result")%,"modified"


figure(3)
plot(1:size(cost,1),cost)
hold on
%plot(1:size(costM,1),costM)
legend("output")%, "Modified output"