%%
%a)
f=[-2400,-820,820,2400];
a=[0.15*exp(1i*0.1*pi),0.35*exp(0.01*1i*pi),0.35*exp(1i*-0.01*pi),0.15*exp(-0.1*1i*pi)];

% a e f variaveis Matlab/Octave com as amplitudes e frequencias
subplot(2,1,1), stem(f, abs(a)), xlabel('frequencia -Hz');
subplot(2,1,2), stem(f, angle(a)./pi), xlabel('frequencia -Hz'), ylabel('\times \pi');
%%
%c)
N=2*fa;
fa=11025;
t=(0:N-1)*(1/fa);
for k=1:1:4
x(k,:)=Ak(k)*exp(1i*2*pi*f(k)*t);
hold on
end
figure(2);
plot(t,sum(x));
%soundsc(x,fa)
%%
%b)
