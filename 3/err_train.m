function [Terror ] = err_train(traindata,model)
    correct = 0;
    error = 0;
    for i = 1: size(traindata,1)
        if model(traindata(i,2), traindata(i,1)) == traindata(i,3)
            correct = correct +1;
        else
            error = error +1;
        end
    end
    Terror = error/size(traindata,1);

end

