%####################################################%
%            junilyd libs by Jacob Møller            %
%####################################################%
% A = pivot(A,row)
% unify the pivot entrance of row. (if rank = rows)
% INPUTS 
%         A - matrix
%         row - row to manipulate 
% OUTPUTS
%         A - 1 as pivot entrance of specified row.
%         factor - print out of the used factor.
%
%####################################################%

function [A] = pivot(A,row)
    col=row;
    factor = 1/A(row,col);
    fprintf('factor: 1 / %s',strtrim(rats(A(row,col))));
    A(row,:) = A(row,:)*factor;
end
