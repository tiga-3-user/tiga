% 设置参数  
amplitude = 10;       % 脉冲幅值  
pulseWidth = 0.5;    % 脉冲宽度（秒）  
timeRange = [0, 6];  % 时间范围（秒）  
fs = 1000;           % 采样频率（Hz）  

% 创建时间向量  
t = 0:1/fs:timeRange(2);   

% 生成矩形脉冲信号  
signal = zeros(size(t));  
pulseStart = timeRange(1);  
pulseEnd = pulseStart + pulseWidth;  
signal(t >= pulseStart & t <= pulseEnd) = amplitude;  

% 调用 MyFourierT 函数计算傅立叶变换  
[f, magnitudeY] = MyFourierT(signal, fs);  

% 绘制频谱图  
figure;  
plot(f, magnitudeY);  
title('矩形脉冲信号的频谱图');  
xlabel('频率 (Hz)');  
ylabel('幅值');  
grid on;