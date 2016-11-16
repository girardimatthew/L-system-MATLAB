function turtleCommands = turtleGraph(LindenmayerString,system,len)
%axiom = 'S';
%axiom = 'SLSRSLS';
%axiom  = 'SLSRSLSLSLSRSLSRSLSRSLSLSLSRSLS';
v = [1 0];
if strcmp(system,'Koch curve');
    angleLeft = 2/6;
    angleRight = -4/6;
elseif strcmp(system,'Sierpinski triangle');
    angleLeft = 2/6;
    angleRight = -angleLeft;
end
    
for w=1:length(LindenmayerString)
    if LindenmayerString(w)=='S'
        %v = [v, 1 0];
    elseif LindenmayerString(w)=='L'
        v = [v, 1 angleLeft*pi];
    elseif LindenmayerString(w)=='R'
        v = [v, 1 angleRight*pi];
    end
end
ratio = len;
indx = [1:2:length(v)];
v(indx) = v(indx) * ratio;
turtleCommands = v;
end
