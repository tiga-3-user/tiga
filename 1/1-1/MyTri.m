function [signal, t] = MyTri(freq, duration, fs)
    t = 0:1/fs:duration;
    signal = sawtooth(2 * pi * freq * t, 0.5); % 0.5 ±íÊ¾Èý½Ç²¨
end