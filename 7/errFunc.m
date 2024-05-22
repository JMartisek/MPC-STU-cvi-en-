function [error] = errFunc(singleJ,testData)
    err = 0;
  for i = 1:16  
        if testData(i,singleJ(1)) == 1
            if testData(i,singleJ(3)) == 1
                output = testData(i,singleJ(7));
            else
                output = testData(i,singleJ(6));
            end
        else
            if testData(i,singleJ(2) == 1)
                output = testData(i,singleJ(5));
            else
                output = testData(i,singleJ(4));
            end
        end
        if testData(i,5) == output
            err = err + 0;
        else
            err = err + 1;
        end
  end
    error = err/16;
end

