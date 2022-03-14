%%
%a)
N=100;
n=1:100;
a=0.1;
b=0.2;
ss1=cos(2*pi*a*n);
%teste
%subplot(2,2,1);
%stem(n,ss1);

ss2=cos(2*pi*b*n);
%teste
%subplot(2,2,2);
%stem(n,ss2);

%%
%b)Obter sinusoidal amortecida
r=0.8;
expo=r.^n;
ss3=expo.*ss1;
subplot(2,2,1);
stem(n,ss3);

%%
%c) 
%ESCOLHA DE UM SINAL UNITÁRIO
delta=[1 zeros(1,N-1)];
subplot(1,2,1);
stem(n,delta);
A=0.5;
Ad=A*delta;
subplot(1,2,2)
stem(n,Ad);

%R;alterações a nivel da amplitude(eixo dos y)