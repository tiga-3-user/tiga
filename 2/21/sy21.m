A=5;
f0=20;
t=0:0.001:0.1;
N=[2,5,10,20,30];
figure;
hold on;
for n = N
    y=zeros(size(t));
     for k=1:n
         Ak=4*A /((2*k-1)*pi);
         y=y+mysin(t,Ak,(2*k-1)*f0,0);
     end
     plot( t, y, 'DisplayName', sprintf('%d sinwave', n));
end
ft = mysquare(t,A, 20, 0,50);
plot(t, ft, 'k--', 'DisplayName','Square wave');
legend show;
xlabel('Time (s)');
ylabel('Amplitude');
title('Square Wave');
grid on;
hold off;