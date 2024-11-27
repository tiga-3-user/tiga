% ���ò���  
amplitude = 5;        % �����źŷ�ֵ  
frequency = 20;       % �����ź�Ƶ�� (Hz)  
duration = 2;         % �źų���ʱ�� (��)  
fs = 100;            % ����Ƶ�� (Hz)  

% ����ʱ������  
t = 0:1/fs:duration;  % ��0��1�룬��1/fsΪ����  

% ���������ź�  
signal = amplitude * sin(2 * pi * frequency * t);  

% ���� MyFourierT �������㸵��Ҷ�任  
[f, magnitudeY] = MyFourierT(signal, fs);  

% ����Ƶ��ͼ  
figure;  
plot(f, magnitudeY);  
title('�����źŵĸ���Ҷ�任ͼ');  
xlabel('Ƶ�� (Hz)');  
ylabel('��ֵ');  
grid on;