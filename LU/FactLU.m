function [L,U]=FactLU(A)
[n,n] = size(A);
for k = 1:n
    L(k,k) = 1;
    for i = k+1:n
    L(i,k) = A(i,k) / A(k,k);
      for j = k+1:n
      A(i,j) = A(i,j) - L(i,k)*A(k,j);
      endfor
    endfor
      for j = k:n
      U(k,j) = A(k,j);
      endfor
endfor