function y = mytri(t,A,f,phi)
%�������ǲ��ź�
y=A*sawtooth(2*pi*f*t+phi,0.5);
%������ֵ
y=y/max(abs(y))*A;
end