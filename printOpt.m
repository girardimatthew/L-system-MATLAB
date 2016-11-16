function printOpt(options)
%printOpt print strings
%
%   printOpt(options) 
%
%   INPUT
%   - options: a cell-array of strings.
%
nOptions = length(options);
fprintf('\n');
for i = 1:nOptions
    fprintf('\t > %d - %s\n', i, options{i});
end
fprintf('\n');
end