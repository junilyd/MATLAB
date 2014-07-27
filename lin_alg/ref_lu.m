%####################################################%
%            junilyd libs by Jacob Møller            %
%####################################################%
% Calculate Echelon Form, for mxm matrix- By LU-factorization
% [L,U] = ref_lu(A)
% INPUTS 
%         A - Input matrix
% OUTPUTS
%         L - Lower Triangular Matrix.
%         U - Upper Triangular Matrix.
%
% From Chapter 20, pp.151 in Numerical Linear Algebra (Trefethen).
%
%####################################################%
function [L,U] = ref_lu(A)
    m = size(A);
    U=A;
    I3 = eye(m);
    L=I3;
    for k=1:m-1
        for j=k+1:m
            L(j,k) = U(j,k)/U(k,k)
            U(j,k:m) = U(j,k:m)-L(j,k)*U(k,k:m)
        end
    end
end
