% Example of A=LU decomposition
disp("EXAMPLE 1")
disp("\n")
A1 = [2,1,1,0;4,3,3,1;8,7,9,5;6,7,9,8]

[L1,U1] = LUFact(A1);

disp("Lower triangular matrix")
disp(L1)

disp("Upper triangular matrix")
disp(U1)

%------------------------------------------

% Example of PA=LU decomposition
disp("EXAMPLE 2")
disp("\n")
A2 = [1,4,0,-4; 5,1,1,-1; 3,1,-1,-2;-3,4,6,2];

[L2, U2, p2] = plu2(A2);
P2 = generarMatrizPermutacion(p2, true);

disp("Row permutation vector")
disp(p2)

disp("Permutation matrix")
disp(P2)

disp("Lower triangular matrix")
disp(L2)

disp("Upper triangular matrix")
disp(U2)

%------------------------------------------

% Example of PAQ=LU decomposition
disp("EXAMPLE 3")
disp("\n")
A3 = [10,-7,0; -3,2,6; 5,-1,5];

[L3,U3,p3,q3] = FactorizacionPAQLU(A3);

%P3 = generarMatrizPermutacion(p3, true);
%Q3 = generarMatrizPermutacion(q3, false);

disp("Row permutation matrix")
disp(p3)

%disp("Row permutation matrix")
%disp(P3)

disp("Column permutation matrix")
disp(q3)

%disp("Column permutation matrix")
%disp(Q3)

disp("Lower triangular matrix")
disp(L3)

disp("Upper triangular matrix")
disp(U3)

##[L3_2,U3_2,p3_2] = FactorizacionPAQLU(A3);
##
##P3_2 = generarMatrizPermutacion(p3_2, true);
##
##disp("Row permutation vector")
##disp(p3_2)
##
##disp("Row permutation matrix")
##disp(P3_2)
##
##disp("Lower triangular matrix")
##disp(L3_2)
##
##disp("Upper triangular matrix")
##disp(U3_2)
