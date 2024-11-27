% 读取数据文件 MySin.txt  
data = load('MySin.txt');  

% 提取时间和信号  
t = data(:, 1);         % 第一列为时间  
signal = data(:, 2);    % 第二列为信号  

% 绘制信号波形图  
figure;  
plot(t, signal);  
title('MySin.txt');  
xlabel('时间 (s)');  
ylabel('幅值');  
grid on;