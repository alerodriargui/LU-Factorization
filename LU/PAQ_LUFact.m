function [x] = PAQ_LUFact(R, p, q, b)
%ROZWIAZ  Rozwi?zuje uk?ad równa? Ax=b korzystaj?c z rozk?adu trójk?tno-trójk?tnego macierzy A.
% Sk?adnia: [x] = ROZWIAZ(R, p, q, b)
%
% Argumenty:
%  R - macierz zawieraj?ca czynniki L i U rozk?adu
%  p - wektor permutacji wierszy
%  q - wektor permutacji kolumn
%  b - wektor b z równania do rozwi?zania
%
% Wyj?cie:
%  x - rozwi?zanie uk?adu równa?
%
% Zobacz te?: ROZKLAD

  n = size(R, 1);
  P = P(p,:);
  Q = Q(q,:);
  c = P*b;

  % Rozwi?zujemy Lz = c
  z(1) = c(1);
  for i=2:n
    z(i) = c(i) - R(i,1:i-1)*z(1:i-1)';
  end
  z = z';

  % Rozwi?zujemy Uy = z
  y(n) = z(n)/R(n,n);
  for i=n-1:-1:1
    y(i) = (z(i) - R(i,i+1:n)*y'(i+1:n))/R(i,i);
  end
  y = y';

  x = Q'*y;
end