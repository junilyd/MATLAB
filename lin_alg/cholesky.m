function R = cholesky(A)
% function R = cholesky(A)
% R - Upper Triangular 
% A'A = R'R

    R = A;
    [m,n] = size(R);

    for k=1:m
        for j=k+1:m
            R(j,j:m) = R(j,j:m) - R(k,j:m) * R(k,j)'/R(k,k)
        end
        R(k,k:m) = R(k,k:m)/sqrt(R(k,k))
        R(k+1:m,k)=0;
    end
end
