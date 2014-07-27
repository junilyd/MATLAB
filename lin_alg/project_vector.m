%####################################################%
%            junilyd libs by Jacob Møller            %
%####################################################%
% [p,e] = project_vector(A,b) 
% Project a vector b onto the column space of a
% vector b onto the column space of A.
%
% INPUTS 
%         A - matrix
%         b - Vector (that is projected) 
% OUTPUTS
%
%         p - The projection of b onto the column space of A.
%         e - The projection of b onto the left nullspace of A.
%                  (Notice that b = p + e and p' * e = 0) 
%
%         P - The Projection Matrix for the 
%             columns space of A. (see 'projection_matrix()')
%
%####################################################%

function [P, p, e] = project(A, b)
P = projection_matrix(A);
p = P * b;
e = b - p;

