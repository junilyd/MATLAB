%####################################################%
%            junilyd libs by Jacob Møller            %
%####################################################%
% A = red_by_factor(A,out_row,in_row,factor) - 
% Reduce rows step by step.
% INPUTS 
%         A - matrix
%         out_row - row to operate on 
%         in_row - row to operate with 
%         factor - factor to use for manipulation.
%
% OUTPUTS
%         A - with one reduced row.
%         factor - which is used for reduction.
%####################################################%
function [A] = red_by_factor(A,out_row,in_row,factor)
    A(out_row,:) = A(out_row,:)-A(in_row,:)*factor;
end
