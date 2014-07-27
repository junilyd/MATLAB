%function A = print_matrix(A,string)
function A = print_matrix(A,string)

    [rows,cols] = size(A);
    % rows = sizeA(1);
    % cols = sizeA(2);
    
    fprintf('%s = \n\n',string);
% if imag(A(:,:))==1
    for k=1:rows
         for i=1:cols
             if imag(A(k,i))==0
                 fprintf('    %7.1f',A(k,i));
             elseif imag(A(k,i))>1
                 fprintf('    %7.1f+%1.1fj',real(A(k,i)),imag(A(k,i)));
             elseif imag(A(k,i))==1
                 fprintf('    %7.1f+%1.1fj',real(A(k,i)),imag(A(k,i)));
             elseif imag(A(k,i))==-1
                 fprintf('    %7.1f%1.1fj',real(A(k,i)),imag(A(k,i)));
             else
                 fprintf('    %7.1f%1.1fj',real(A(k,i)),imag(A(k,i)));
             end
         end
         fprintf('\n');
    end
% else
%     for k=1:rows
%          for i=1:cols
%          fprintf('    %2.1f+%2.1fj',real(A(k,i)),imag(A(k,i)));
%          end
%          fprintf('\n');
%     end
% end
end
