function [signal, t] = MySquare(freq, duration, fs)
    t = 0:1/fs:duration;
    signal = square(2 * pi * freq * t);
end