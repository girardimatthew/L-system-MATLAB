function [LindernmayerString,len] = LindIter(system, N)
    if (strcmpi(system,'Koch curve'))
        [LindernmayerString,len] = koch(N);
    elseif (strcmpi(system,'Sierpinski triangle'))
        [LindernmayerString,len] = sierpinski(N);
    else
        fprintf(2,'Error!\n');
    end
end