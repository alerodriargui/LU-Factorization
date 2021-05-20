A = [3,2,1;5,3,4;1,1,-1];
system_matrix = A;
indep_term = [1;2;1];
if det(system_matrix)!= 0
  solution = inv(system_matrix)*indep_term
else
  disp("The system can't be solved")
endif

aug_matrix = [system_matrix, indep_term]