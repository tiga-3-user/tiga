% ��ȡ�����ļ� MySin.txt  
data = load('MySin.txt');  

% ��ȡʱ����ź�  
t = data(:, 1);         % ��һ��Ϊʱ��  
signal = data(:, 2);    % �ڶ���Ϊ�ź�  

% �����źŲ���ͼ  
figure;  
plot(t, signal);  
title('MySin.txt');  
xlabel('ʱ�� (s)');  
ylabel('��ֵ');  
grid on;