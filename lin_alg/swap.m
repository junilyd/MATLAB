%####################################################%
%            junilyd libs by Jacob Møller            %
%####################################################%
% A = swap(A,row1,row2) 
% Swap two rows.
%
% INPUTS 
%         A - Input matrix
%         row1
%         row2
% OUTPUTS
%         A - Matrix with swapped rows.
%
%####################################################%

function [A] = swap(A,row1,row2)
    A([row1 row2],:) = A([row2 row1],:);
end
