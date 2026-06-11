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
set(interfaceObj, 'InputBufferSize', 25000000);


% Connect device object to hardware.
connect(deviceObj);

set(deviceObj.Waveform(1), 'MaxNumberPoint', 12.5e6);
set(deviceObj.Acquisition(1), 'Timebase', 100e-3);
set(deviceObj.Trigger(1), 'Mode', 'stop');


% Daten vom Oszilloskop einlesen
groupObj = get(deviceObj, 'Waveform');
groupObj = groupObj(1);
set(groupObj, 'Precision', 'int16')
[Y,X,YUNIT,XUNIT,HEADER] = invoke(groupObj, 'readwaveform', 'channel1', true);

% Daten auswählen
t0 = 0;
t1 = t(end);
i0 = find(abs(X-t0)<(X(2)-X(1)));
i1 = find(abs(X-t1)<(X(2)-X(1)));
dX = X(2) - X(1);
% X = 0:dX:dX*(N-1);
X = t;
Y = Y(i0(1):i1(1));

% FFT  
[P1_TEL, f_TEL] = func_fft(X, Y);
[P1_STM, f_STM] = func_fft(t, ub);

% Zeitsignal Teledyne
figure(1);
nexttile(1);
plot(X,Y);
legend({'STM32' 'Teledyne LeCroy'});
hold off;

% FFT STM32
nexttile(2);
loglog(f_STM, P1_STM);

% FFT Teledyne
loglog(f_TEL,P1_TEL);
hold off;
legend({'FFT und Messdaten STM32' 'Messdaten STM32 FFT Matlab' 'Messdaten Teledyne FFT Matlab'});

% Delete objects.
delete([deviceObj interfaceObj]);

% Kreuzkorrelation
R = corrcoef(P1,P1_TEL)
