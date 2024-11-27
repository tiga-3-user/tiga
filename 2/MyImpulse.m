function [t, signal] = MyImpulse(amplitude, pulseWidth, timeRange)  
    % MyImpulse ���ɾ��������ź�  
    % �������:  
    %   amplitude - �����ֵ  
    %   pulseWidth - �����ȣ��룩  
    %   timeRange - ʱ�䷶Χ [start, end]  
    % �������:  
    %   t - ʱ������  
    %   signal - ���������ź�  

    % ����ʱ������  
    t = timeRange(1):0.01:timeRange(2); % ��0.01��Ϊ����  

    % ��ʼ���ź�  
    signal = zeros(size(t));  

    % �������忪ʼ�ͽ���ʱ��  
    pulseStart = timeRange(1);  
    pulseEnd = pulseStart + pulseWidth;  

    % ���ɾ�������  
    signal(t >= pulseStart & t <= pulseEnd) = amplitude;  
end