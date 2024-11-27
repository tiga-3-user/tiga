function [signal] = MyWhiteNoise(duration, fs)
    n_samples = duration * fs;
    signal = randn(1, n_samples); % Éú³É°×ÔëÉù
end