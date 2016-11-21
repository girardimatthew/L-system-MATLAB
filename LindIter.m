function [LindernmayerString,len] = LindIter(system, N)
%LindIter
%   
%   The function must calculate N iterations of the system specified by 
%   system according to the replacement rules for the Koch curve 
%   Sierpinski triangle, Koch curve (version 002) 
%   and dragon curve respectively.
%   For each system, a specific function is called.
%
%   [LindernmayerString,len] = LindIter(system, N)
%
%   INPUT
%   - system:       string, which L-system
%   - N:            Number of Iteration
%
%   OUTPUT
%   - LindernmayerString:     A string of symbols representing 
%                             the state of the system after 
%                             the Lindemayer iteration
%   - len:                    ratio
%

    if (strcmpi(system,'Koch curve version 1'))
        [LindernmayerString,len] = koch(N);
    elseif (strcmpi(system,'Koch curve version 2'))
        [LindernmayerString,len] = koch2(N);
    elseif (strcmpi(system,'Sierpinski triangle'))
        [LindernmayerString,len] = sierpinski(N);
    elseif (strcmpi(system,'Dragon curve'))
        [LindernmayerString,len] = dragon(N);
    else
        fprintf(2,'Error!\n');
    end
end