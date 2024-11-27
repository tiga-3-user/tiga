% ���ò���  
amplitude = 10;       % �����ֵ  
pulseWidth = 0.5;    % �����ȣ��룩  
timeRange = [0, 6];  % ʱ�䷶Χ���룩  
fs = 1000;           % ����Ƶ�ʣ�Hz��  

% ����ʱ������  
t = 0:1/fs:timeRange(2);   

% ���ɾ��������ź�  
signal = zeros(size(t));  
pulseStart = timeRange(1);  
pulseEnd = pulseStart + pulseWidth;  
signal(t >= pulseStart & t <= pulseEnd) = amplitude;  

% ���� MyFourierT �������㸵��Ҷ�任  
[f, magnitudeY] = MyFourierT(signal, fs);  

% ����Ƶ��ͼ  
figure;  
plot(f, magnitudeY);  
title('���������źŵ�Ƶ��ͼ');  
xlabel('Ƶ�� (Hz)');  
ylabel('��ֵ');  
grid on;