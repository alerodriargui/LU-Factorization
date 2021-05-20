function x = PermutacionMatriz(n)
x = zeros(n,n,factorial(n));
permutations = perms(1:n);
for i = 1:size(x,3)
  x(:,:,i) = eye(n)(permutations(i,:),:);
end
endfunction