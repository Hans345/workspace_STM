function [P1, f] = func_fft(x, y)
% X: Zeitvektor
% Y: Datenvektor 
f0 = 0;         % Startpunkt FFT [Hz]
f1 = 62.5e3;    % Endpunkt FFT [Hz]    

% FFT
dt = x(2) - x(1);
fs = 1/dt;      % Samplingfrequenz [Hz]

% Parameter für FFT  
L = length(y);  % Vektorlänge

% FFT
Y = fft(y);

% Transformation in einseitiges Amplitudenspektrum
P2 = abs(Y/L);
P1 = P2(1:L/2+1);   
P1(2:end-1) = 2*P1(2:end-1);
f = fs/L*(0:(L/2));
% if0 = find(abs(f-f0)<(f(2)-f(1)));
% if1 = find(abs(f-f1)<(f(2)-f(1)));
% P1 = P1(if0(1):if1(1));
% f = f(if0(1):if1(1));

end