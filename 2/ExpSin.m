    % MyExpSin 生成指数衰减正弦信号  
    % 输入参数：  
    %   amplitude - 正弦波的幅值  
    %   frequency - 正弦波的频率 (Hz)  
    %   decay - 衰减系数  
    %   duration - 信号的持续时间 (秒)  
    %   fs - 采样频率 (Hz)  
    function signal = ExpSin(amplitude, frequency, decay, duration, fs)  
    t = 0:1/fs:duration; % 生成时间向量  
    signal = amplitude * exp(decay * t) .* sin(2 * pi * frequency * t); % 生成指数衰减正弦信号  
end