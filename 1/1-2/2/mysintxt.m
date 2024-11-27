% 设置参数  
amplitude = 5;          % 幅值  
frequency = 10;         % 频率 (Hz)  
duration = 1;          % 持续时间 (秒)  
fs = 1000;              % 采样频率 (Hz)  

% 调用自定义函数  
[t, signal] = MySin(amplitude, frequency, duration, fs);  

% 将时间和信号写入数据文件  
dataToWrite = [t', signal']; % 转置以便于写入  
save('MySin.txt', 'dataToWrite', '-ascii');  

% 可选: 绘制信号  
figure;  
plot(t, signal);  
title('正弦信号');  
xlabel('时间 (s)');  
ylabel('幅值');  
grid on;