% ��������  
clear; clc; close all;  

% ���ò���  
amplitude = 5;        % �źŵķ�ֵ  
frequency = 20;       % �����źŵ�Ƶ�� (Hz)  
decay = -10;          % ˥��ϵ��  
duration = 1;         % �źų���ʱ�� (��)  
fs = 1000;            % ����Ƶ�� (Hz)  

% ����ָ��˥�������ź�  
x_signal = ExpSin(amplitude, frequency, decay, duration, fs);  

% ���㸵��Ҷ�任  
[X, f] = MyFourierT2(x_signal, fs);  

% ����Ƶ��ͼ  
figure;  
plot(f, abs(X), 'b', 'LineWidth', 2);  
xlim([0 fs/2]); % ֻ������Ƶ�ʲ���  
title('ָ��˥�������źŸ���Ҷ�任��Ƶ��ͼ');  
xlabel('Ƶ�� (Hz)');  
ylabel('��ֵ');  
grid on;