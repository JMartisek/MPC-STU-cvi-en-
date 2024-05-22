clc
close all
clear

%% input data

data = inputData(230127,100);
map = zeros(100,100);

%% a
[output, prob] = knn(3,map, data);
[output2, prob2] = knn(1,map, data);
[output3, prob3] = knn(5,map,data);


%% sa
figure(1)
createImage(output3,1)
hold on
plot(data(1:49,1),data(1:49,2),'+')
plot(data(50:100,1),data(50:100,2),'x')
title("5 KNN")
figure(3)
createImage(output,3)
hold on
plot(data(1:49,1),data(1:49,2),'+')
plot(data(50:100,1),data(50:100,2),'x')
title("3 KNN")

%% single point ROC
disp("5 KNN:")
[~, ~] = confusionMatrix(data, output3);
disp("3 KNN:")
[~, ~] = confusionMatrix(data, output);
disp("1 KNN:")
[TPR,FPR] = confusionMatrix(data,output2);
%% full ROC spatne
%[TPR1,FPR1] = ROCMax(prob3,output2);



%% full ROC
[TPR1,FPR1] = ROC2Max(data,prob3);

[TPR2,FPR2] = ROC2Max(data,prob);
%% graphs

figure(2)
plot(FPR1, TPR1, 'b-', 'LineWidth', 2);% knn 5
xlabel('False Positive Rate');
ylabel('True Positive Rate');
title('ROC Curve');
axis([0 1 0 1]);
grid on;
hold on
plot(FPR2, TPR2, 'r-', 'LineWidth', 2);% knn 3
plot(FPR,TPR,"Marker","+","LineWidth",5)
legend("KNN5", "KNN3", "KNN1")

%% ex 5
clc
disp(" ex1")
tic
[output, prob] = knn(3,map, data);
tError = err_train(data,output);
ex1 = toc;
fprintf(ex1 +" \n ex2 \n")
tic
[errCV, ~] = err_CV(data,10);
ex2 = toc;
fprintf(ex2 + "\n" +ex2/ex1)





