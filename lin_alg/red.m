%####################################################%
%            junilyd libs by Jacob Møller            %
%####################################################%
% A = red(A,out_row,in_row,col) 
% Reduce rows step by step.
% INPUTS 
%         A - matrix
%         out_row - row to operate on. 
%         in_row - row to operate with.
%         col - column to operate.
% OUTPUTS
%         A - with one reduced row.
%         factor - which was used for reduction.
%
%####################################################%

function [A] = red(A,out_row,in_row,col)
   
    factor = A(out_row,col)/A(in_row,col);
     
    fprintf('factor: %s+%sj / %s+%sj ',strtrim(rats(A(out_row,col))),strtrim(rats(imag(A(out_row,col)))),strtrim(rats(A(in_row,col))),strtrim(rats(imag(A(in_row,col)))));
    A(out_row,:) = A(out_row,:)-A(in_row,:)*factor;
end
