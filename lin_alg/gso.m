%####################################################%
%            junilyd libs by Jacob Møller            %
%####################################################%
% [Q,R] = gso(A)            (built in: [Q,R]=mgs(A))
% Calculate the QR factoraization of A.
% INPUTS 
%         A - matrix
% OUTPUTS
%         Q Matrix.
%         R Matrix.
%
%####################################################%

function [Q,R] = gso(A)
    [m,n] = size(A) % dimensions of A
    Q = zeros(m,n) % allocation
    R = zeros(n,n)
    V = A % for intemediate results
    for i=1:n
        R(i,i) = norm(V(:,i)) % get the diagonal entry
        Q(:,i) = V(:,i)/R(i,i) % normalize
    end
        for j = i+1:n
            R(i,j) = Q(:,i)'*V(:,j) % project
            V(:,j) = V(:,j) - R(i,j)*Q(:,i) 
        end       
end
