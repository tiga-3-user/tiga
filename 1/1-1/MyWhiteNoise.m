function [signal] = MyWhiteNoise(duration, fs)
    n_samples = duration * fs;
    signal = randn(1, n_samples); % ���ɰ�����
end