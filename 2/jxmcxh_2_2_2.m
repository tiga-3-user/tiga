% ���ò���  
amplitude = 10;       % �����ֵ  
pulseWidth = 0.5;    % �����ȣ��룩  
timeRange = [0, 6];  % ʱ�䷶Χ���룩  
fs = 100;           % ����Ƶ�ʣ�Hz��  

% ����ʱ������  
t = 0:1/fs:timeRange(2); % ��0��6�룬��1/fsΪ����  

% ���ɾ��������ź�  
signal = zeros(size(t));  
pulseStart = timeRange(1);  
pulseEnd = pulseStart + pulseWidth;  
signal(t >= pulseStart & t <= pulseEnd) = amplitude;  

% ���㸵��Ҷ�任  
N = length(signal); % �źų���  
Y = fft(signal);    % ����Ҷ�任  
f = (0:N-1)*(fs/N); % Ƶ������  

% ����Ƶ�ף���ֵ�ף�  
magnitudeY = abs(Y)/N; % ��һ����ֵ  

% ֻ����ǰһ���Ƶ�ף���ΪFFT�ǶԳƵģ�  
halfN = ceil(N/2);  
f = f(1:halfN);  
magnitudeY = magnitudeY(1:halfN);  

% ����Ƶ��ͼ  
figure;  
plot(f, magnitudeY);  
title('���������źŸ���Ҷ�任��Ƶ��ͼ');  
xlabel('Ƶ�� (Hz)');  
ylabel('��ֵ');  
grid on;