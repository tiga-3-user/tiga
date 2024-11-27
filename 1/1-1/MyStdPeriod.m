function [signal, t] = MyStdPeriod(freq, duration, fs)
    t = 0:1/fs:duration;
    signal = sin(2 * pi * freq * t) .* (t < duration); % ׼�����ź�
end