%####################################################%
%            junilyd libs by Jacob Møller            %
%####################################################%
% [P,A,L,U] = ref_plu(A)
% Calculate Echelon Form, for mxm matrix. 
% Done by LU-factorization with partial pivoting. 
% 
% INPUTS 
%         A - Input matrix
% OUTPUTS
%         P - Permutation Matrix.
%         A - Input Matrix.
%         L - Lower Triangular Matrix.
%         U - Upper Triangular Matrix.
%
% From Chapter 21, pp.160 in Numerical Linear Algebra (Trefethen).
%
%####################################################%
function [P,A,L,U] = ref_plu(A)
    m = size(A);
    U=A;
    I = eye(m);
    L=I;
    P=I;
    for k=1:m-1
        [maxU,max_index] = max(abs(U([k:m],k)));
        max_index = max_index+k-1;
        if max_index>=k
            
            if k ~= max_index
                U = swap(U,max_index,k);
                P = swap(P,max_index,k);
                if k>1
                    tmp = L(k,[1:k-1]); 
                    L(k,[1:k-1]) = L(max_index,[1:k-1]);
                    L(max_index,[1:k-1]) = tmp;
                end
            end
        end
        for j=k+1:m
            L(j,k) = U(j,k)/U(k,k);
            U(j,k:m) = U(j,k:m)-L(j,k)*U(k,k:m);
        end
    end
end
