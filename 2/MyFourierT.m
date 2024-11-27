function [f, magnitudeY] = MyFourierT(signal, fs)  
    % MyFourierT 计算信号的傅立叶变换  
    % 输入参数:  
    %   signal - 输入信号（时间域）  
    %   fs - 采样频率 (Hz)  
    % 输出参数:  
    %   f - 频率向量  
    %   magnitudeY - 傅立叶变换的幅值谱  

    % 信号长度  
    N = length(signal);  
    
    % 计算傅立叶变换  
    Y = fft(signal);  
    
    % 生成频率向量  
    f = (0:N-1)*(fs/N);  
    
    % 计算幅值谱并归一化  
    magnitudeY = abs(Y) / N;   
    
    % 只返回前一半的频率和幅值谱（因为FFT是对称的）  
    halfN = ceil(N/2);  
    f = f(1:halfN);  
    magnitudeY = magnitudeY(1:halfN);  
end