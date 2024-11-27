function [t, signal] = MySin(amplitude, frequency, duration, fs)  
    % MySin 生成正弦信号  
    % 输入参数:  
    %   amplitude - 幅值  
    %   frequency - 频率（Hz）  
    %   duration - 持续时间（秒）  
    %   fs - 采样频率（Hz）  
    % 输出参数:  
    %   t - 时间向量  
    %   signal - 正弦信号  

    % 创建时间向量  
    t = 0:1/fs:duration; % 从0到duration，以fs为步长  
    % 生成正弦信号  
    signal = amplitude * sin(2 * pi * frequency * t);  
end