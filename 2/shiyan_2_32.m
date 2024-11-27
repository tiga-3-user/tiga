% 清理工作区  
clear; clc; close all;  

% 设置参数  
amplitude = 5;        % 信号的幅值  
frequency = 20;       % 正弦信号的频率 (Hz)  
decay = -10;          % 衰减系数  
duration = 1;         % 信号持续时间 (秒)  
fs = 1000;            % 采样频率 (Hz)  
period_extension = 2; % 延拓周期 (秒)  

% 生成指数衰减正弦信号  
x_signal = ExpSin(amplitude, frequency, decay, duration, fs);  

% 进行周期延拓  
num_extensions = period_extension / duration; % 计算需要延拓的次数  
extended_signal = repmat(x_signal, 1, num_extensions); % 进行周期延拓  

% 计算傅里叶变换  
[X, f] = MyFouriert2(x_signal, fs);  
[X_ext, f_ext] = MyFouriert2(extended_signal, fs);  

% 绘制频谱图  
figure;  
hold on;  

% 绘制原信号的频谱  
plot(f, abs(X), 'b', 'LineWidth', 2, 'DisplayName', '原信号 X(f)');  

% 绘制延拓信号的频谱  
plot(f_ext, abs(X_ext), 'r--', 'LineWidth', 2, 'DisplayName', '延拓信号 X''(f)');  

% 添加主题  
xlim([0 fs/2]); % 只绘制正频率部分  
title('指数衰减正弦信号周期延拓并进行傅里叶变换图');  
xlabel('频率 (Hz)');  
ylabel('幅值');  
legend('show'); % 显示图例  
grid on;  
hold off;