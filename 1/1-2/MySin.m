% �������
amplitude = 5; % ��ֵ
frequency = 10; % Ƶ�ʣ���λ��Hz
sampleRate = 1000; % �����ʣ���λ��Hz
duration = 1; % �źų���ʱ�䣬��λ����

% ����ʱ������
timeVector = 0:1/sampleRate:duration-1/sampleRate;

% ���������ź�
sinSignal = amplitude * sin(2*pi*frequency*timeVector);

% д���ļ�
filename = 'MySin.txt';
fid = fopen(filename, 'w');
fprintf(fid, '%.4f\n', sinSignal);
fclose(fid);