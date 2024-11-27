% ��������  
clear; clc; close all;  

% ���ò���  
amplitude = 5;        % �źŵķ�ֵ  
frequency = 20;       % �����źŵ�Ƶ�� (Hz)  
decay = -10;          % ˥��ϵ��  
duration = 1;         % �źų���ʱ�� (��)  
fs = 1000;            % ����Ƶ�� (Hz)  
period_extension = 2; % �������� (��)  

% ����ָ��˥�������ź�  
x_signal = ExpSin(amplitude, frequency, decay, duration, fs);  

% ������������  
num_extensions = period_extension / duration; % ������Ҫ���صĴ���  
extended_signal = repmat(x_signal, 1, num_extensions); % ������������  

% ���㸵��Ҷ�任  
[X, f] = MyFouriert2(x_signal, fs);  
[X_ext, f_ext] = MyFouriert2(extended_signal, fs);  

% ����Ƶ��ͼ  
figure;  
hold on;  

% ����ԭ�źŵ�Ƶ��  
plot(f, abs(X), 'b', 'LineWidth', 2, 'DisplayName', 'ԭ�ź� X(f)');  

% ���������źŵ�Ƶ��  
plot(f_ext, abs(X_ext), 'r--', 'LineWidth', 2, 'DisplayName', '�����ź� X''(f)');  

% �������  
xlim([0 fs/2]); % ֻ������Ƶ�ʲ���  
title('ָ��˥�������ź��������ز����и���Ҷ�任ͼ');  
xlabel('Ƶ�� (Hz)');  
ylabel('��ֵ');  
legend('show'); % ��ʾͼ��  
grid on;  
hold off;