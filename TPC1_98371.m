clear all;close all;clc;
%% alinea a

f=[-2250, -280, 280, 2250];
Ak=[0.75*exp(0.1*1i*pi*1.5),0.45*exp(0.01*1i*pi*0.75),0.45*exp(-0.01*1i*pi*0.75),0.75*(-1i*0.1*pi*1.5)];

% a e f variaveis Matlab/Octave com as amplitudes e frequencias
figure(1)
subplot(2,1,1)
stem(f, abs(Ak));
xlabel('frequencia -Hz')
subplot(2,1,2)
stem(f, angle(Ak)./pi);
xlabel('frequencia -Hz')
ylabel('\times \pi')

%% aliena b
t=0:0.01:2-0.01;
x1= zeros(1,200);
for k=1:length(f)
    x1(k,:)= Ak(1,k).* exp(1i*2*pi*f(1,k).*t);
    figure(2)
    plot(t,real(x1(k,:)));
    hold on     
end

x=sum(x1);
figure(3)
plot(t,real(x));


%plot(t,real(x))=plot(t,x) porque o sinal x(t) só tem valores reais
%% alinea c

N=11025; %no t 0:11025-1 são 11025 valores.
%para multiplicar com (1/fa)tem de ter o mesmo tamanho
%para poder ocorrer a multiplicação de matrizes
fa=11025;
t=(0:N-1)*(1/fa);
x2=zeros(1,N);
for k=1:length(f)
    x2(k,:)=Ak(1,k) .* exp(1i*2*pi*f(1,k).*t); 
end

xx=real(sum(x2));
soundsc(xx,fa);

