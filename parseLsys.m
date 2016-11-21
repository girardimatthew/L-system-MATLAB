function [Lsystem,N] = parseLsys(system,M)
%parseLsys
%
%   This function ask the user to input a string and a number.
%   It also check for invalid input.
%   [Lsystem,N] = parseLsys(system,M)
%
%   INPUT  
%   - system:       A string (which L-system)
%   - M:            An integer (number of iteration)
%
%   OUTPUT
%   - Lsystem:      The choosen L-system
%   - N:            The choosen number of iteration
%
    optLsys = {'Koch curve version 1 (suggested iteration: 0..8)',...
        'Koch curve version 2 (suggested iteration: 0..8)',...
        'Sierpinski triangle (suggested iteration: 0..8)',...
        'Dragon curve (suggested iteration: 10..15)',...
        'Back to Main options'};

    % print L-system options
    while true
        printOpt(optLsys);
        whichSys = input('Please enter a valid L-system: ', 's');
        whichSys = str2double(whichSys);
        if (whichSys==1)
            Lsystem = 'Koch curve version 1';
            break;
        elseif (whichSys==2)
            Lsystem = 'Koch curve version 2';
            break;
        elseif (whichSys==3)
            Lsystem = 'Sierpinski triangle';
            break;
        elseif (whichSys==4)
            Lsystem = 'Dragon curve';
            break;
        elseif (whichSys==5)
            Lsystem = system;
            N = M;
            fprintf(2,'Back to main options.\n');
            return;
        else
            fprintf(2,'WARNING: Unknown/invalid option. Please try again.\n');
        end
    end
    
    while true
        N = input('Please enter a reasonable number of iterations (0-15): ', 's');
        N = str2double(N);
        if isnan(N)
            fprintf(2,'WARNING: invalid input. Please try again.\n');
        elseif N>=0 && N<6
            break;
        elseif N>=6 && N<=15
            fprintf(2,'WARNING: Be aware of computational time!\n');
            break;
        else 
            fprintf(2,'WARNING: number of iteration too big.\nPlease consider to choose a reasonable number of iteration.\n');
        end
    end
    
end