%READWAVEFORM M-Code for communicating with an instrument. 
%  
%   This is the machine generated representation of an instrument control 
%   session using a device object. The instrument control session comprises  
%   all the steps you are likely to take when communicating with your  
%   instrument. These steps are:
%       
%       1. Create a device object   
%       2. Connect to the instrument 
%       3. Configure properties 
%       4. Invoke functions 
%       5. Disconnect from the instrument 
%  
%   To run the instrument control session, type the name of the M-file,
%   readwaveform, at the MATLAB command prompt.
% 
%   The M-file, READWAVEFORM.M must be on your MATLAB PATH. For additional information
%   on setting your MATLAB PATH, type 'help addpath' at the MATLAB command
%   prompt.
%
%   Example:
%       readwaveform;
%
%   See also ICDEVICE.
%

%   Creation time: 20-May-2009 14:06:28 

% fs
fs = 100e3;
N = 4*65536;

% Create a TCPIP object.
interfaceObj = instrfind('Type', 'tcpip', 'RemoteHost', '192.168.0.5', 'RemotePort', 1861, 'Tag', '');

% Create the TCPIP object if it does not exist
% otherwise use the object that was found.
if isempty(interfaceObj)
    interfaceObj = tcpip('192.168.0.5', 1861);
else
    fclose(interfaceObj);
    interfaceObj = interfaceObj(1);
end

% Create a device object. 
deviceObj = icdevice('lecroy_basic_driver.mdd', interfaceObj);
set(interfaceObj, 'InputBufferSize', 12500000);


% Connect device object to hardware.
connect(deviceObj);

set(deviceObj.Waveform(1), 'MaxNumberPoint', 12.5e6);
set(deviceObj.Acquisition(1), 'Timebase', 500e-3);
set(deviceObj.Trigger(1), 'Mode', 'stop');


% Daten vom Oszilloskop einlesen
groupObj = get(deviceObj, 'Waveform');
groupObj = groupObj(1);
set(groupObj, 'Precision', 'int16')
[Y_CH1,X_CH1,YUNIT,XUNIT,HEADER] = invoke(groupObj, 'readwaveform', 'channel1', true);
[Y_CH2,X_CH2,YUNIT,XUNIT,HEADER] = invoke(groupObj, 'readwaveform', 'channel2', true);

% Daten auswählen
t0 = 0;
t1 = (N-1)*(1/fs);
i0 = find(abs(X_CH1-t0)<(X_CH1(2)-X_CH1(1)));
i1 = find(abs(X_CH1-t1)<(X_CH1(2)-X_CH1(1)));
X_CH1 = X_CH1(i0(1):i1(1));
Y_CH1 = Y_CH1(i0(1):i1(1));
X_CH2 = X_CH2(i0(1):i1(1));
Y_CH2 = Y_CH2(i0(1):i1(1));

% FFT  
[P1_TEL_CH1, f_TEL_CH1] = func_fft(X_CH1, Y_CH1);
[P1_TEL_CH2, f_TEL_CH2] = func_fft(X_CH2, Y_CH2);
[P1_STM, f_STM] = func_fft(t, ub);

% FFT Fensterfunktionen
% w1 = hamming(N)';           % Hamming-Fenster
% w2 = hann(N)';              % Hann-Fenster
% w3 = blackmanharris(N)';    % Blackman-Fenster
% w4 = flattopwin(N)';        % Flattop-Fenster
% [P1_HAMM, f_HAMM] = func_fft(t, w1.*ub);
% [P1_HANN, f_HANN] = func_fft(t, w2.*ub);
% [P1_BLACK, f_BLACK] = func_fft(t, w3.*ub);
% [P1_FLAT, f_FLAT] = func_fft(t, w4.*ub);

% Zeitsignal Teledyne
figure(1);
nexttile(1);
plot(X_CH1,Y_CH1);
hold on;
plot(X_CH2,Y_CH2);
legend({'STM32' 'Teledyne LeCroy CH1' 'Teledyne LeCroy CH2'});
hold off;

% FFT STM32
nexttile(2);
loglog(f_STM, P1_STM);

% FFT Teledyne
loglog(f_TEL_CH1,P1_TEL_CH1);
loglog(f_TEL_CH2,P1_TEL_CH2);
% loglog(f_HAMM, P1_HAMM);
% loglog(f_HANN, P1_HANN);
% loglog(f_BLACK, P1_BLACK);
% loglog(f_FLAT, P1_FLAT);
% legend({'FFT und Messdaten STM32' 'Messdaten STM32 FFT Matlab' 'Messdaten Teledyne FFT Matlab'...
%    'Hamming Fenster' 'Hann-Fenster' 'Blackman-Fenster' 'Flattop-Fenster'});
legend({'FFT und Messdaten STM32' 'Messdaten STM32 FFT Matlab' 'CH1 Teledyne FFT Matlab' 'CH2 Teledyne FFT Matlab'});

% Delete objects.
delete([deviceObj interfaceObj]);

% Kreuzkorrelation
% R = corrcoef(P1,P1_TEL_CH1)
