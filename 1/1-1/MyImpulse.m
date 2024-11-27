function [signal, t] = MyImpulse(duration, fs)
    t = 0:1/fs:duration;
    signal = zeros(size(t));
    impulse_index = round(fs * 0.1); % 10% ´¦µÄÂö³å
    signal(impulse_index) = 1; % ¾ØÐÎÂö³å
end
