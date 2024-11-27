A = 5;
f0 = 20;
t=0:0.001:0.1;
N = [2, 5, 10, 20, 30];
figure;
hold on;
for n =N
    y= zeros(size(t));
for k = 1:n
    Ak=(8*A)/(pi^2*(2*k-1)^2);
    y=y+((-1)^((k-1)))* mysin(t, Ak, (2*k-1)* f0,0);
end
     plot(t, y, 'DisplayName', sprintf('%d sinwave',n ));
end
ft = mytri(t,A,20,pi/2);
plot(t,ft,'k--','DisplayName','Triangle Wave' );
legend show;
xlabel('Time (s)');
ylabel('Amplitude');
title('Trlangle Wave');
grid on;
hold off;