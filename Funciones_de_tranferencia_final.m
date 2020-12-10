%Constantes
M = 90*5*10^(-3); m = 1/16*4+1/4*3; l = 0.25; g = 9.81;
%d1 = 1; d2 = 1;

%Primer modelo
A=[0 1 0 0;
    ((M+m)*g)/M*l 0 0 0;
    0 0 0 1;
    -m*g/M 0 0 0];

B=[0;-1/(M*l);0;1/M];

C=[1 0 0 0;
   0 0 1 0];

D=[0;0];

[b,a]=ss2tf(A,B,C,D)

%Función de transferencia 1
t1 = tf(b(1,:),a);

%Función de transferencia 2
t2 = tf(b(2,:),a);

