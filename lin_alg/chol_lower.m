
function R = chol_lower(A)
    % format shortEng;

    R = A;
    [m,n] = size(R);

    for k=m:-1:1
        for j=m:-1:k+1
            R(j,j:m) = R(j,j:m) - R(k,j:m) * R(k,j)'/R(k,k)
        end
        R(k,k:m) = R(k,k:m)/sqrt(R(k,k))
        R(k,k+1:m)=0;
    end
end
