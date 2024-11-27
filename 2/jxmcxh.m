% 设置参数  
amplitude = 10;       % 脉冲幅值  
pulseWidth = 0.5;    % 脉冲宽度（秒）  
timeRange = [0, 6];  % 时间范围（秒）  
% 调用自定义函数  
[t, signal] = MyImpulse(amplitude,pulseWidth, timeRange);  

% 绘制信号  
figure;  
plot(t, signal);  
title('矩形脉冲信号');  
xlabel('时间 (s)');  
ylabel('幅值');  
grid on;  
axis([0 6 0 12]); % 设置坐标轴范围