%####################################################%
%            junilyd libs by Jacob Møller            %
%####################################################%
% A = scale(A,row,factor) 
% Scale a row as you specify.
% 
% INPUTS 
%         A - Input matrix.
%         row - row to manipulate.
%         factor - factor of choice for manipulation.
% OUTPUT
%         A - Matrix with scaled row.
%
%####################################################%
function [A] = scale(A,row,factor)
    A(row,:) = A(row,:)*factor;
end
