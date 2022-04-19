%%
%a)
load ecg1.txt; %sinal tempo discreto
fa=250; %logo precisamos de saber o tempo
%de amostragem utilizada
figure ();
%title('Sinal batimento cardíaco c/tempo discreto');
%és só fazer o plot para observarmos o eixo dos X
plot(ecg1);
%Ta= 1/fa seg; Ta=0.004 s
t=(0:length(ecg1)-1)/fa;
figure();
plot(t,ecg1);
%5 batimentos por cada 4 s
%75 batimentos por minuto
%%
%b)
h1=[1 1 1]./3;
y1=conv(ecg1,h1);
length(y1) %sinal de saida maior que 
%sinal de entrada
t1= 0: (1/fa) : (length(y1)-1)/fa;
figure ();
plot(t,ecg1,t, y1(1:1000));
%%
%c)
figure ();
h2=[1 1 1 1 1] ./ 5;                 %resposta impulsional
y2=conv(ecg1, h2);          
plot(t(1:250),ecg1(1:250),t(1:250),y2(3:252));
%(3:252) para tirar o atraso, porque naio faz média centrada
