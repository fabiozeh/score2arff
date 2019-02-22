% Writes an ARFF file with data from a matlab array.
% Parameters:
% . x: array with one sample per row and one attribute per column
% . filename: char array with valid name or path+name for saving the file
% . attrnames: cell array of char arrays with size(attrnames,1) = size(x,2)
% holding attribute names.
% . attrtypes: cell array of same structure as attrnames, for attribute
% types.
% . attrformat: either char array with full printf format (no \n) of
% attribute values, or cell array in the same structure as the others with
% one string format per attribute (in which case formats will be 
% comma-separated).
function array2arff(x, filename, attrnames, attrtypes, attrformat)

if iscell(attrformat)
    fmt = [];
    for k = 1:size(attrformat,1)
        fmt = [fmt attrformat{k} ',']; %#ok<AGROW>
    end
    attrformat = fmt(1:end-1);
end

F = fopen(filename, 'wt');
fprintf(F, '%s', ['@relation ' filename char(10) char(10)]); %#ok
for i = 1:size(x,2)
fprintf(F, '%s', ['@attribute ' attrnames{i} ' ' attrtypes{i} char(10)]); %#ok
end
fprintf(F, '%s', [char(10) '@data' char(10)]); %#ok

for i = 1:size(x,1)
  fprintf(F,[attrformat '\n'],x(i,:));
end

fclose(F);

end