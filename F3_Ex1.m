%%
dummy = 1; A = 1; passo = 10^(-5);
% Um sinal x
x = -A:passo:A; %reta declive 1
%quantização c/audiowrite
audiowrite('aaa.wav', x ,dummy, 'BitsPerSample', 8);%numero de niveis=2^=256 "escadinhas"
%gravar x como audio
info = audioinfo('aaa.wav');
% x1 é a versao quantizada com 8 bits
x1 = audioread('aaa.wav'); %para ouvir o som quantizado

%audioinfo=samplerate depende do vsalor do dummy 
%%
%a)
M=max(x);
m=min(x1);

%%
%b)
ux=unique(x);
ux1=unique(x1);%256=(2^8)

%%
%visualização sinais
figure(1);
plot(1:length(x),x);
hold on
plot(1:length(x1),x1); 
%primeiros 10000 valores
figure(2);
plot(x(1:10000));
hold on
plot(x1(1:10000));

%%
%c)
%ii)
delta=ux1(2)-ux1(1);
%i)A/2^b
ideal=2/256;
%audiowrite usa o espaçamento ideal mas devia adicionar metade desse passo
%no primeiro nivel (grelha deve estar centrada na gama)
%%
%d)
%i
%Energia sinal = somatorio do modulo ao quadrado de todos os valores do
%sinal
Ex=sum(x.^2); 
%ii)
E=x-x1';
%aspeto do vetor E c/zoom
figure(3)
plot(E(1:10000));
%energia erro/ruido
Ee=sum(E.^2);
%%
%e)
SNR=10*log10(Ex/Ee);

%figure(4)
%
%hist(x);
%figure(5);
%hist(x,100);
%%
%f)
