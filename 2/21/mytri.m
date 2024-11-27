function y = mytri(t,A,f,phi)
%计算三角波信号
y=A*sawtooth(2*pi*f*t+phi,0.5);
%调整幅值
y=y/max(abs(y))*A;
end