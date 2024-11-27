% 设置参数  
amplitude = 5;        % 正弦信号幅值  
frequency = 20;       % 正弦信号频率 (Hz)  
duration = 2;         % 信号持续时间 (秒)  
fs = 100;            % 采样频率 (Hz)  

% 创建时间向量  
t = 0:1/fs:duration;  % 从0到1秒，以1/fs为步长  

% 生成正弦信号  
signal = amplitude * sin(2 * pi * frequency * t);  

% 调用 MyFourierT 函数计算傅立叶变换  
[f, magnitudeY] = MyFourierT(signal, fs);  

% 绘制频谱图  
figure;  
plot(f, magnitudeY);  
title('正弦信号的傅里叶变换图');  
xlabel('频率 (Hz)');  
ylabel('幅值');  
grid on;