function [f, magnitudeY] = MyFourierT(signal, fs)  
    % MyFourierT �����źŵĸ���Ҷ�任  
    % �������:  
    %   signal - �����źţ�ʱ����  
    %   fs - ����Ƶ�� (Hz)  
    % �������:  
    %   f - Ƶ������  
    %   magnitudeY - ����Ҷ�任�ķ�ֵ��  

    % �źų���  
    N = length(signal);  
    
    % ���㸵��Ҷ�任  
    Y = fft(signal);  
    
    % ����Ƶ������  
    f = (0:N-1)*(fs/N);  
    
    % �����ֵ�ײ���һ��  
    magnitudeY = abs(Y) / N;   
    
    % ֻ����ǰһ���Ƶ�ʺͷ�ֵ�ף���ΪFFT�ǶԳƵģ�  
    halfN = ceil(N/2);  
    f = f(1:halfN);  
    magnitudeY = magnitudeY(1:halfN);  
end