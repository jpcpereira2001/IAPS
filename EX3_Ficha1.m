%%
%a)
N=100;
T=-0.5;
Ta=0.01;
Tn=-0.5:0.01:0.5; %x
%%
%b)
u1=[ones(1,20) zeros(1,N-19)];
subplot(2,2,1);
plot(Tn,u1,"--");
xlabel("Segundos");

lam=-2;
s=lam*Tn;
x11=exp(s);
subplot(2,2,2);
plot(Tn,x11);
xlabel("Segundos");


f=2;
x22=cos(2*pi*f*Tn);
subplot(2,2,3);
plot(Tn,x22);
xlabel("Segundos");

%%
%c)
lam1=-2;
s1=lam1*Tn;
x111=exp(s1);
subplot(2,2,1);
plot(Tn,x111);
xlabel("Segundos");
title("lam <0")

lam2=2;
s2=lam2*Tn;
x112=exp(s2);
subplot(2,2,2);
plot(Tn,x112);
xlabel("Segundos");
title("lam>0")

%R: negativo decrescente, positivo crescente+refleção eixo Y

lam11=1;
s11=lam11*Tn;
x1111=exp(s11);
subplot(2,2,3);
plot(Tn,x1111);
xlabel("Segundos");
title("lam=1")

lam22=2;
s22=lam22*Tn;
x1122=exp(s22);
subplot(2,2,4);
plot(Tn,x1122);
xlabel("Segundos");
title("lam = 2")

%R:amplitude duplica de lam=1 para lam=2(neste caso);
%(cont.)diferença na amplitude
%%
%d)
F=[20 50 100 120 150];
Z=F'*Tn;
xf=cos(2*pi*Z);
plot(Tn,xf);
xlabel("Segundos");
title("Variação de sinusoide com diferentes frequências:");

%R:(AULA???)
