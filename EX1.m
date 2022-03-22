%%
%a)
Ak = load("amplitudes2.txt");

%descobrir valores de amplitudes dentro do ficheiro:
%usanndo comando length para o calculo
%formatSpec e fprintf para mostrar na linha de comandos
formatSpec = 'O ficheiro contém %d Amplitudes\n'
fprintf(formatSpec, length(Ak));
%%
%b)
stem(Ak);
%%
%c)
f0=2;
t=0:0.01:2-0.01;
x1=Ak(1)*sin(2*pi*f0*t);
plot(t,x1);

M=zeros(8,length(t));

for k=1:1:8
M(k,:)=Ak(k).*sin(2*pi*k*f0.*t);
%subplot(2,4,k);
plot(t,M(k,:));
hold on
end

figure(2)
soma=sum(M);
plot(t,soma);
%%
%d)
figure (3)
f1=16;
x2=Ak(1)*sin(2*pi*f1*t);
plot(t,x2);

N=zeros(8,length(t));

for k=1:1:8
    N(k,:)=Ak(k).*sin(2*pi*k*f1.*t);
    %subplot(2,4,k);
    plot(t,N(k,:));
end    

figure(4)
soma=sum(N);
plot(t,soma);