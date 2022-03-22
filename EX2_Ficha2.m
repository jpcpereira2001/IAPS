%%
%2)
Ak = load("amplitudes2.txt");
m=length(Ak);
f=2;
M=zeros(m,length(t));
for k=1:1:m
    
    M(k,:)=Ak(k)*sin(2*pi*k*f*t);
    plot(t,M(k,:));
    hold on
end
