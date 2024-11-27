function [signal, t] = MyExpSin(freq, duration, fs)
    t = 0:1/fs:duration;
    signal = exp(-t) .* sin(2 * pi * freq * t); % 指数衰减正弦信号
end