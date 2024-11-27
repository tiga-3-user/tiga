    % MyExpSin ����ָ��˥�������ź�  
    % ���������  
    %   amplitude - ���Ҳ��ķ�ֵ  
    %   frequency - ���Ҳ���Ƶ�� (Hz)  
    %   decay - ˥��ϵ��  
    %   duration - �źŵĳ���ʱ�� (��)  
    %   fs - ����Ƶ�� (Hz)  
    function signal = ExpSin(amplitude, frequency, decay, duration, fs)  
    t = 0:1/fs:duration; % ����ʱ������  
    signal = amplitude * exp(decay * t) .* sin(2 * pi * frequency * t); % ����ָ��˥�������ź�  
end