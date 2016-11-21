function turtlePlot(turtleCommands,system,N)
%turtleGraph
%   
%   The plot function should turn the input vector 
%   turtleCommands into a graphical visualisation.
%   turtleCommands = turtleGraph(LindenmayerString,system,len)
%
%   INPUT
%   - turtleCommands:           A row vector consisting of alternating 
%                               length and angle specifications
%
%   - system:                   A string telling which L-system.
%   - len:                      Ratio. Scaling the length of line
%
close all; 
x = [0;0];
d = [1;0];
i = 2;
v = turtleCommands;
figure(1)
while i<=length(v)
    newD = [cos(v(i)), -sin(v(i)); sin(v(i)), cos(v(i))] * d;
    newX = x + v(1) * newD;
    line([x(1), newX(1)],[x(2), newX(2)],'color',[0 0 1], 'linewidth',2);
    x = newX;
    d = newD;
    i = i+2;
end
ax = gca;
ax.FontSize = 16;
title(system)
xlabel(['Number of Iterations: ', num2str(N)]);
end