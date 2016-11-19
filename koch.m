function [LMstring,len] = koch(N)

rule(1).before = 'S';
rule(1).after = 'SLSRSLS';

rule(2).before = 'R';
rule(2).after = 'R';%

rule(3).before = 'L';
rule(3).after = 'L';%  

nRules = length(rule);

%starting seed
axiom = 'S';

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