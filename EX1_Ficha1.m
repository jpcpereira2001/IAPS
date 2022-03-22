%%
%impulso unitário
N=100; %tamanho do vetor
n=1:100; %vetor com N(100)elementos
delta=[1 zeros(1,N-1)]; %criar delta com apenas primero valor a 1
subplot(3,2,1);
stem(n,delta);
xlabel("N");
ylabel("delta");
%%
%degrau unitário
uni=[ones(1,20) zeros(1,N-20)];
subplot(3,2,2);
stem(n,uni);
xlabel("N");
ylabel("uni");
%%
%exponencial decrescente
r=0.9; %decrescente porque r<1
x1=r.^n;
subplot(3,2,3);
stem(n,x1);
xlabel("N");
ylabel("expon");
%%
%sinuoidal
alpha=0.1;
x2=cos(2*pi*alpha*n);
subplot(3,2,4);
stem(n,x2);
xlabel("N");
ylabel("sinusoidal");
%%
%b)
%i) para r<1 é decrescente. para r>1 é crescente
%ii) alpha funciona como um ganho e vai fazer com que a frequência 
%aumente
%%
%iii)
alpha2=1+alpha;
x3=cos(2*pi*alpha2*n);
subplot(3,2,5);
stem(n,x3);
xlabel("N");
ylabel("sinusoidal v2");
%R:os sinais são iguais
