%####################################################%
%            junilyd libs by Jacob Møller            %
%####################################################%
% C = colbasis(A)
% Find a basis of the column space of A.
% INPUTS 
%         A - matrix
% OUTPUTS
%         C - Matrix containing the pivot columns A
%
%####################################################%

function C = colbasis(A)

[R, pivcol] = rref(A);
C = A(:, pivcol);
