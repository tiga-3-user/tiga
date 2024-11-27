% ���ò���  
amplitude = 5;          % ��ֵ  
frequency = 10;         % Ƶ�� (Hz)  
duration = 1;          % ����ʱ�� (��)  
fs = 1000;              % ����Ƶ�� (Hz)  

% �����Զ��庯��  
[t, signal] = MySin(amplitude, frequency, duration, fs);  

% ��ʱ����ź�д�������ļ�  
dataToWrite = [t', signal']; % ת���Ա���д��  
save('MySin.txt', 'dataToWrite', '-ascii');  

% ��ѡ: �����ź�  
figure;  
plot(t, signal);  
title('�����ź�');  
xlabel('ʱ�� (s)');  
ylabel('��ֵ');  
grid on;