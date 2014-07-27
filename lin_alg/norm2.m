%####################################################%
%            junilyd libs by Jacob Møller            %
%####################################################%
% Calculate vector norm2.
% norm = norm2(A)
% INPUTS 
%         A - matrix
% OUTPUTS
%         norm - norm2 result 
%         print of calculations      
%####################################################%

function [norm] = norm2(A)
    norm = 0;
    fprintf('\nnorm = (');
    for i=1:size(A)
        norm = norm + A(i)*conj(A(i));
        fprintf('(%1.1f+%1.1fj) * (%1.1f+%1.1fj) + ',real(A(i)), imag(A(i)), real(conj(A(i))), imag(conj(A(i))));
    end
    norm = sqrt(norm);
    fprintf(')^(1/2) = %1.2f',norm);
end
