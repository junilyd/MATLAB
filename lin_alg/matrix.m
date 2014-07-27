%####################################################%
%             Note with information
%####################################################%
% 
% -----------------------------------------------------------
%                       A' = A
% -----------------------------------------------------------
%  Hermitic / Symmetric
%  Has an orthonormal eigen base.
%  EigVal: Real
%  Diag: Real
%  Singular Values = abs(Eigen values)
% -----------------------------------------------------------
%                      A' = -A
% -----------------------------------------------------------
%  skævhermitisk / Skævsymmrtrisk 
%  detA != 0
%  Invertible
%  Eigval: Imaginary
%  Diag: 0 or Imag
% -----------------------------------------------------------
%                      A' = A^-1           => AA' = AA^-1 = I
% -----------------------------------------------------------
%  |detA| = 1
%  Unitary / Orthogonal / Isometric
%  EigVal: Unit Circle
% -----------------------------------------------------------
%
%  Singular 
%          ( detA = 0 ): Non-invertible 
%      --> A square matrix that does not have a matrix inverse. 
%  
%  Regular  
%          ( detA !=0 ) ( A = A^-1 ): Invertible
%
%  Rank-deficient
%          where A is an m × n matrix with entries, n ≤ m, and with linearly dependent columns, 
%          i.e., rank A = r < n. i
%          In this case, the matrix A is said to be rank deficient, and there are non-trivial linear combinations 
%          of the columns ak , k = 1, 2, . . . , n, of the matrix A that are equal to zero: 
%          ξ1a1 +ξ2a2 +...+ξnan = 0, while ∑nk=1 |ξk|2 ̸= 0. 
%               Alternatively, we say that the matrix A has a non-empty kernel
%
%  Pseudo-inverse
%          A+ = (A*A)^-1A^-1
%          even if it is not necessarily square. For any given complex matrix, it is
%          possible to define many possible pseudoinverses. 
%          The most commonly encountered pseudoinverse is the Moore-Penrose matrix inverse, 
%          which is a special case of a general type of pseudoinverse known as a matrix 1-inverse. 
%
% -----------------------------------------------------------
%                   Diagonalisering
% -----------------------------------------------------------
%               ^  
%  D = B^-1AB = A 
%
%  B has eigenvectors of A in the diagonal. zero elsewhere
% 
% -----------------------------------------------------------
%              Ax = 0 (Homogeneous System) 
% -----------------------------------------------------------
%  Forms the zero space of A.
%  To find solutions, A has to be singular => detA = 0.
%  
% -----------------------------------------------------------
%             Ax = b (Inhomogeneous System)
% -----------------------------------------------------------
%  if Rank = cols => 1 solution                             
%  if Rank < cols => inf. solutions                         
% -----------------------------------------------------------
%
%
%
%
%
%
%
%
%
%
