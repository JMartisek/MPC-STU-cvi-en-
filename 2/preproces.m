function [positive ,negative] = preproces(table, index)
    numberOfAtributtes = size(table,1);
    positive = [];
    negative = [];
    for i = 1:numberOfAtributtes
        if table(i,index) == 1
            positive = [positive; table(i,1:end)];
        else
            negative = [negative; table(i,1:end)];
        end
    
    end
    positive(:,index) = [];
    negative(:,index) = [];
end