%function [u] = svd_U(S,V,A)
function [U] = U(S,V,A)
    cnt = size(S(1,:));
    for i=1:cnt(2)
        U(:,i) = 1/S(i,i)*A*V(:,i);
    end
        U
        reduced_u = rref(U)
        null_red_u = null(reduced_u)
        fprintf('\n\nU = 1/SIGMA(i,i) A V(:,i)*\n');
        fprintf('U has to be a mxm matrix.\nFind an orthonormal last dimension if it is not there, by solving reduced_u\n then test if A = U*S*V__transposed ')
end
