% 定义参数
amplitude = 5; % 幅值
frequency = 10; % 频率，单位：Hz
sampleRate = 1000; % 采样率，单位：Hz
duration = 1; % 信号持续时间，单位：秒

% 生成时间向量
timeVector = 0:1/sampleRate:duration-1/sampleRate;

% 生成正弦信号
sinSignal = amplitude * sin(2*pi*frequency*timeVector);

% 写入文件
filename = 'MySin.txt';
fid = fopen(filename, 'w');
fprintf(fid, '%.4f\n', sinSignal);
fclose(fid);