function [t, signal] = MyImpulse(amplitude, pulseWidth, timeRange)  
    % MyImpulse 生成矩形脉冲信号  
    % 输入参数:  
    %   amplitude - 脉冲幅值  
    %   pulseWidth - 脉冲宽度（秒）  
    %   timeRange - 时间范围 [start, end]  
    % 输出参数:  
    %   t - 时间向量  
    %   signal - 矩形脉冲信号  

    % 创建时间向量  
    t = timeRange(1):0.01:timeRange(2); % 以0.01秒为步长  

    % 初始化信号  
    signal = zeros(size(t));  

    % 计算脉冲开始和结束时间  
    pulseStart = timeRange(1);  
    pulseEnd = pulseStart + pulseWidth;  

    % 生成矩形脉冲  
    signal(t >= pulseStart & t <= pulseEnd) = amplitude;  
end