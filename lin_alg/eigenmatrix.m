%####################################################%
%            junilyd libs by Jacob Møller            %
%####################################################%
% eigenmatrix(A,lambda_vector) - u is only symbolic !!
% Calculate symbolic eigenmatrix.
% INPUTS 
%         A - matrix
%         lambda_vector - contains the eigenvalues of A.
% OUTPUTS
%         M{i} - Print of matrix, with calculated eigenvalues.
%                (This needs to be typed in manually, before solving.) 
%
%####################################################%

function eigenmatrix(A,lambda)
    for i=1:size(A)
        I = eye(size(A));
        M{i}= A-lambda(i)*I;
        fprintf('eigenmatrix u{%1.0f} to be solved (Ax=0) is:',i);M{i} 
    end
end
