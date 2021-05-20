
function [A,b]=Gauss(A,b)
  
  n=length(b);
  for j = 1:n-1;
    for k = j+1:n;
      a1=-A(k,j)/A(j,j);
      for m = j:n;
        A(k,m)=A(k,m)+a1*A(j,m);
      endfor
      b(k)= b(k)+a1*b(j);
    endfor
  endfor

