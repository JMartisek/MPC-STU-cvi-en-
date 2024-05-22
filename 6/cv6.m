clc
close all
    clear

%% robicz
ID = 230127;
deviation = 1;
rng(ID)

x11 = normrnd(1,deviation,[100,1]);

x12 = normrnd(2,deviation,[100,1]);

x13 = normrnd(1.5,deviation+1,[100,1]);


x1 = [x11; x12; x13];


x21 = normrnd(1,deviation,[100,1]);

x22 = normrnd(1,deviation,[100,1]);

x23 = normrnd(1.87,deviation,[100,1]);

x2 = [x21; x22; x23];
%% as
figure(1)
subplot(1,3,1)
plot(x1,x2,'o')
subplot(1,3,2)
plot(x1,x2,'o', 'Color',"r")
hold on
plot(x12,x22,'o', 'Color',"b")
plot(x13,x23,'o', 'Color',"g")

%% 
data = [x1,x2];
nData = normalize(data);

pivot1 = [];
pivot2 = [];
pivot3 = [];

pivot1 = [nData(1,1),nData(1,2)];
pivot2 = [nData(101,1),nData(101,2)];
pivot3 = [nData(201,1),nData(201,2)];

% figure(2)
% 
% plot(pivot1(1),pivot1(2),'+','Color','r')
% hold on
% plot(pivot2(1),pivot2(2),'+','Color','b')
% xlim([0 1])
% ylim([0 1])
% plot(pivot3(1),pivot3(2),'+','Color','g')
%% a
clc
output = kMean(nData,3);

figure(1)
subplot(1,3,3)
plot(output(1:94,1,1),output(1:94,2,1),'o', 'Color',"r")
hold on
plot(output(95:200,1,2),output(95:200,2,2),'o', 'Color',"b")
plot(output(201:300,1,3),output(201:300,2,3),'o', 'Color',"g")
xlim([0 1])
ylim([0 1])

% 0.1019








