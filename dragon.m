function [LMstring,len] = dragon(N)
%dragon
%   
%   This function computes the Lindenmayer string (symbols) 
%   based on some pre-defined rules and N iteration, 
%   in order to display a Dragon curve.
%   [LMstring,len] = dragon(N)
%
%   INPUT  
%   - N:            Number of Iteration
%
%   OUTPUT
%   - LMsystem:     A string of symbols representing 
%                   the state of the system after 
%                   the Lindemayer iteration
%   - len:          ratio

rule(1).before = 'F';
rule(1).after = 'FRH';

rule(2).before = 'H';
rule(2).after = 'FLH';

nRules = length(rule);

%starting seed
axiom = 'F';

%number of repititions
nReps = N;

len = 1;
ratio = 1/3;

for i=1:nReps
    len = len*ratio;
    
    %one character/cell, with indexes the same as original axiom string
    axiomINcells = cellstr(axiom'); 
    
    for j=1:nRules
        %the indexes of each 'before' string
        hit = strfind(axiom, rule(j).before);
        if (length(hit)>=1)
            for k=hit
                axiomINcells{k} = rule(j).after;
            end
        end
    end
    %now convert individual cells back to a string
    axiom=[];
    for j=1:length(axiomINcells)
        axiom = [axiom, axiomINcells{j}];
    end
end
LMstring = axiom;
end