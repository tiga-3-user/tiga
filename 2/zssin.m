% 清理工作区  
clear; clc; close all;  

% 设置参数  
amplitude = 5;        % 信号的幅值  
frequency = 20;       % 正弦信号的频率 (Hz)  
decay = -10;          % 衰减系数  
duration = 1;         % 信号持续时间 (秒)  
fs = 1000;            % 采样频率 (Hz)  

% 生成指数衰减正弦信号  
x_signal = ExpSin(amplitude, frequency, decay, duration, fs);  

% 计算傅里叶变换  
[X, f] = MyFourierT2(x_signal, fs);  

% 绘制频谱图  
figure;  
plot(f, abs(X), 'b', 'LineWidth', 2);  
xlim([0 fs/2]); % 只绘制正频率部分  
title('指数衰减正弦信号傅里叶变换的频谱图');  
xlabel('频率 (Hz)');  
ylabel('幅值');  
grid on;