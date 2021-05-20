function [L,U,P] = FactorizacionPALU(A)
  L = eye(size(A));
  U = zeros(size(A));
  [m,n] = size(A);
  epsil = 1e-10;
  P = eye(n,n);
  indx=[1:n];
  for k= 1: n-1 #fila pivotal
    aux=[k:n];
    [max_pivot,indxmax] = max(abs(A(indx(aux),k)));
    if (max_pivot < epsil)
      disp ("No puedo seguir");
      return;
      
    endif
    if (indx(k) ~= indx(aux(indxmax)));
      m=indx(k);
      indx(k) = indx(aux(indxmax));
      indx(aux(indxmax)) = m;
    endif
    for i = k+1: n
      s= A(indx(i),k)/A(indx(k),k);
      A(indx(i),k)= s; #contruyo las L(i,k)
      for j = k+1 : n
        A(indx(i),j)= A(indx(i),j)- s * A(indx(k),j); #constryo las Uij
      endfor
    endfor
  endfor
  P = P(indx,:);
  for i= 1:n
    U(i,i:n)=A(indx(i),i:n); 
    
    L(i,1:i-1)=A(indx(i),1:i-1);
  endfor
endfunction
