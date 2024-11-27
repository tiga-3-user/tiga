function [X, f] = MyFourierT2(signal, fs)  
    % MyFourierT �����źŵĸ���Ҷ�任  
    % ���������  
    %   signal - �����ź�����  
    %   fs - ����Ƶ�� (Hz)  
    % ���������  
    %   X - ����Ҷ�任�ĸ������  
    %   f - Ƶ������  

    N = length(signal); % �źų���  
    X = fft(signal); % ���㸵��Ҷ�任  
    X = X / N; % ��һ��  
    f = (0:N-1) * (fs / N); % Ƶ������  
end