%####################################################%
%            junilyd libs by Jacob Møller            %
%####################################################%
% P = projection_matrix(A)
% Projection matrix for the column space of A.
% INPUTS 
%         A - matrix
% OUTPUTS
%         P - The Projection Matrix for the 
%             columns space of A.
%
%####################################################%

function P = projection_matrix(A)
A = colbasis(A);
P = A*inv(A'*A)*A';
