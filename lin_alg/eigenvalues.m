%####################################################%
%            junilyd libs by Jacob Møller            %
%####################################################%
% lambda = eigenvalues(A)
%  
% INPUTS 
%         A - matrix
% OUTPUTS
%         lambda - vector consisting of eigenvalues
%
%####################################################%

function [lambda] = eigenvalues(A)
    syms l;
    I=eye(size(A))
    M = A-l*I
    detM = det(M)
    detM = factor(detM)
    lambda=solve(detM==0,l)
    lambda = double(lambda);
end
