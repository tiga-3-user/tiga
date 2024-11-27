function [X, f] = MyFourierT2(signal, fs)  
    % MyFourierT 计算信号的傅里叶变换  
    % 输入参数：  
    %   signal - 输入信号向量  
    %   fs - 采样频率 (Hz)  
    % 输出参数：  
    %   X - 傅里叶变换的复数结果  
    %   f - 频率向量  

    N = length(signal); % 信号长度  
    X = fft(signal); % 计算傅里叶变换  
    X = X / N; % 归一化  
    f = (0:N-1) * (fs / N); % 频率向量  
end