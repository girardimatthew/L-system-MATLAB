function [Lsystem,N] = parseLsys()
    optLsys = {'Koch curve',...
        'Sierpinski triangle',...
        'Back to Main options'};

    % print L-system options
    while true
        printOpt(optLsys);
        whichSys = input('Please enter a valid L-system: ', 's');
        whichSys = str2double(whichSys);
        if (whichSys==1)
            Lsystem = optLsys{1};
            break;
        elseif (whichSys==2)
            Lsystem = optLsys{2};
            break;
        elseif (whichSys==3)
            Lsystem = '';
            N = -1;
            fprintf(2,'WARNING: No L-system selected. Back to main options.\n');
            return;
        else
            fprintf(2,'WARNING: Unknown/invalid option. Please try again.\n');
        end
    end
    
    while true
        N = input('Please enter a reasonable number of iterations: ', 's');
        N = str2double(N);
        if isnan(N)
            fprintf(2,'WARNING: invalid input. Please try again.\n');
        elseif N>=0 && N<=8
            break;
        elseif N>8 && N<=12
            fprintf(2,'Be aware of computational time.\n');
            break;
        else 
            fprintf(2,'WARNING: number of iteration too big.\nPlease consider to choose a reasonable number of iteration.\n');
        end
    end
    
end