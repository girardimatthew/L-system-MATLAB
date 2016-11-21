function turtleCommands = turtleGraph(LindenmayerString,system,len)
%turtleGraph
%   
%   This function translates the string of symbols in LindenmayerString 
%   into a sequence of turtle graphics commands.
%   turtleCommands = turtleGraph(LindenmayerString,system,len)
%
%   INPUT
%   - LindenmayerString:        A string of symbols representing 
%                               the state of the system after 
%                               the Lindemayer iteration.
%   - system:                   A string telling which L-system.
%   - len:                      Ratio. Scaling the length of line
%
%   OUTPUT
%   - turtleCommands:           A row vector containing the turtle graphics
%                               commands consisting of alternating length 
%                               and angle specifications
%
v = [1 0];
if strcmp(system,'Koch curve version 1');
    angleLeft = 2/6;
    angleRight = -4/6;
elseif strcmp(system,'Koch curve version 2');
    angleLeft = 90/180;
    angleRight = -90/180;
elseif strcmp(system,'Sierpinski triangle');
    angleLeft = 2/6;
    angleRight = -angleLeft;
elseif strcmp(system,'Dragon curve');
    angleLeft = 90/180;
    angleRight = -90/180;
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
