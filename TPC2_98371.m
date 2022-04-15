clear all;close all;clc;
fase = pi/3;
fa = 1e3; %Hz
f = 50; % Hz
c = 5; %nº ciclos
T = 1/f;
Ta = 1/fa;
t = 0:Ta:c*T-Ta; 
xn = sin (2 * pi * f * t + fase);
stem (t,xn,'.')

xq = zeros (4, length (t));
e =  zeros (4, length (t));
Energyerro = zeros (1, 4);
b = [4 6 8 10];
for i = 1:length(b)
    xq(i,:) = xQuant2 (xn, b(i));
    e(i,:)  = xn - xq(i,:);
    Energyerro(1,i) = sum(e(i,:).^2);
end
figure()
subplot(2,2,1)
stem(t,xq(1,:),'.')
title('Quantização de 4 bits')

subplot(2,2,2)
stem(t,xq(2,:),'.')
title('Quantização de 6 bits')

subplot(2,2,3)
stem(t,xq(3,:),'.')
title('Quantização de 8 bits')

subplot(2,2,4)
stem(t,xq(4,:),'.')
title('Quantização de 10 bits')

Ex = sum (xn.^2);
SNR = 10*log10(Ex./Energyerro);
figure ()
plot (b, SNR,'o');
xlabel ('nº de bits');
ylabel ('SNR (dB)')
hold on
SnR = 6.02 * b;
plot (b, SnR);
figure ()
hist (xn); 
