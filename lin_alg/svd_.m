
%####################################################%
%            junilyd libs by Jacob Møller            %
%####################################################%
% [U,SIGMA,V] = svd_(A)
% Calculate the SVD.
% INPUTS 
%         A - matrix
% OUTPUTS
%         U - U Matrix.
%         S - Sigma matrix.
%         V - V Matrix
%
%####################################################%
function [U,SIGMA,V] = svd_(A)
    ATA = A'*A
    eigenval = eigenvalues(ATA);
    singular_values = sqrt(eigenval)    % Converting to double from symbolic.  
                                            singular_values = double(singular_values);
                                            eigenval = double(eigenval);

    SIGMA = zeros(size(A));
    for i=1:size(singular_values)
        % Sorting max singeular values to descending order 
        [maxsingular,max_index] = max(singular_values);
        SIGMA(i,i) = maxsingular;
        singular_values(max_index) = [];
    
        
        % Sorting max eigenvalues to descending order 
        % Defining Eigenspace vectors by input of eigenvalues (one by one) into determinant equation. 
        [max_eigen,max_eig_index] = max(eigenval);
        fprintf('\n\nMatrix %1.0f that defines vector %1.0f of the nullspace (by solving Ax=0 (normalized))\n',i,i); 
        eigenspace_matrix = ATA-max_eigen*eye(size(ATA))
        eigenval(max_eig_index) = [];
        
        V(:,i) = null(eigenspace_matrix)       
    end 
    fprintf('V is calculated by sorting the eigenvalues to same index numbers as the decreasing signular values\nV is found from solving the equations Ax=0 for V-vectors\nThat means: The null space V, where V = ATA-lambda*I, \n');
    U = svd_U(SIGMA,V,A);
end
