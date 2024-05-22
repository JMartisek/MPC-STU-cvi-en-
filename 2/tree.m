function [maxIndex,table] = tree(table,maxIndex, input)
    for k = 1:size(table,2)-1
        HSA1(k) = CountHsx(table(:,k),table(:,size(table,2)));
    end 
    HSA1
    feature  = pickFeature(HSA1);
    if sum(HSA1) == 0
        display("KONEC ") %+ input(feature)
        return
    end
    
    display("Koren je x"+ input(feature) + " ve vrstve cislo "+ (maxIndex-size(table,2)+2))
    input(feature) = [];
    %numberOfAtributtes = numberOfAtributtes -1;
    [table1, table2] = preproces(table,feature);
    if maxIndex == size(table,2)+1
        display("KONEC \n")
        return
    end
    tree(table1, maxIndex,input)
    tree(table2, maxIndex,input)

end

