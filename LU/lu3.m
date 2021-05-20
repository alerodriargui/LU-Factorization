A = [1,0,1,2,0;
     0,sqrt(3),1,4,0;
     3,3,2,3,sqrt(3);
     sqrt(2),1,2,sqrt(7),5;
     2,4,0,2,1]
[L,U]=lu(A)
[L,U,P]=lu(A)
b=[1;1;1;1;1];
b1=P*b;
y=susprog(L,b1);
x=susreg(U,y);
disp(x)
