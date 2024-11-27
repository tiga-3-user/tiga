function [t, signal] = MySin(amplitude, frequency, duration, fs)  
    % MySin ���������ź�  
    % �������:  
    %   amplitude - ��ֵ  
    %   frequency - Ƶ�ʣ�Hz��  
    %   duration - ����ʱ�䣨�룩  
    %   fs - ����Ƶ�ʣ�Hz��  
    % �������:  
    %   t - ʱ������  
    %   signal - �����ź�  

    % ����ʱ������  
    t = 0:1/fs:duration; % ��0��duration����fsΪ����  
    % ���������ź�  
    signal = amplitude * sin(2 * pi * frequency * t);  
end