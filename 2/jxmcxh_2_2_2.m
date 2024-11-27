% 设置参数  
amplitude = 10;       % 脉冲幅值  
pulseWidth = 0.5;    % 脉冲宽度（秒）  
timeRange = [0, 6];  % 时间范围（秒）  
fs = 100;           % 采样频率（Hz）  

% 创建时间向量  
t = 0:1/fs:timeRange(2); % 从0到6秒，以1/fs为步长  

% 生成矩形脉冲信号  
signal = zeros(size(t));  
pulseStart = timeRange(1);  
pulseEnd = pulseStart + pulseWidth;  
signal(t >= pulseStart & t <= pulseEnd) = amplitude;  

% 计算傅立叶变换  
N = length(signal); % 信号长度  
Y = fft(signal);    % 傅立叶变换  
f = (0:N-1)*(fs/N); % 频率向量  

% 计算频谱（幅值谱）  
magnitudeY = abs(Y)/N; % 归一化幅值  

% 只绘制前一半的频谱（因为FFT是对称的）  
halfN = ceil(N/2);  
f = f(1:halfN);  
magnitudeY = magnitudeY(1:halfN);  

% 绘制频谱图  
figure;  
plot(f, magnitudeY);  
title('矩形脉冲信号傅里叶变换的频谱图');  
xlabel('频率 (Hz)');  
ylabel('幅值');  
grid on;