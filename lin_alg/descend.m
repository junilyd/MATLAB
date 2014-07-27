function B = descend_diag(A)

    for i=1:size(A)
        % Sorting max singeular values to descending order 
        [max_val,max_index] = max(A);
        B(i,i) = max_val;
        A(max_index) = [];
    end
end
