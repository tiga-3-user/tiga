% ���ò���  
amplitude = 10;       % �����ֵ  
pulseWidth = 0.5;    % �����ȣ��룩  
timeRange = [0, 6];  % ʱ�䷶Χ���룩  
% �����Զ��庯��  
[t, signal] = MyImpulse(amplitude,pulseWidth, timeRange);  

% �����ź�  
figure;  
plot(t, signal);  
title('���������ź�');  
xlabel('ʱ�� (s)');  
ylabel('��ֵ');  
grid on;  
axis([0 6 0 12]); % ���������᷶Χ