function [L,U] = FactorizacionLU(A)
  L = eye(size(A));
  U = zeros(size(A));
  [m,n] = size(A);
  for k= 1: n-1 #fila pivotal
    for i = k+1: n
      s= A(i,k)/A(k,k);
      A(i,k)= s; #contruyo las L(i,k)
      L(i,k)=A(i,k);
      for j = k+1 : n
        A(i,j)= A(i,j)- s * A(k,j); #constryo las Uij
      endfor
    endfor
  endfor
  for i= 1:n
    U(i,i:n)=A(i,i:n);
  endfor
  endfunction