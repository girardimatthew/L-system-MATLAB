function [LindernmayerString,len] = LindIter(system, N)
    if (strcmpi(system,'Koch curve'))
        [LindernmayerString,len] = koch(N);
    elseif (strcmpi(system,'Koch curve (version 2)'))
        [LindernmayerString,len] = koch2(N);
    elseif (strcmpi(system,'Sierpinski triangle'))
        [LindernmayerString,len] = sierpinski(N);
    elseif (strcmpi(system,'Dragon curve'))
        [LindernmayerString,len] = dragon(N);
    else
        fprintf(2,'Error!\n');
    end
end