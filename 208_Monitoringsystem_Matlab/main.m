%% 
clc; close all; clear all;
warning('off');
% Serielle Verbindung konfigurieren
port = "COM8";
baudrate = 230400;
s = serialport(port, baudrate);

% Terminator definieren
configureTerminator(s, "CR/LF");

% Alten Puffer leeren
flush(s);

disp("Warte auf Daten vom STM32...");

% Callback definieren
% Diese Funktion wird AUTOMATISCH aufgerufen,
% sobald eine komplette Zeile empfangen wurde
configureCallback(s, "terminator", @readData);

% Globale Parameter - in callback sichtbar!
global t ub f1 P1 f2 P2 idx N

% Parameter
N = 65536;
fs = 25e3;
idx = 1;

% Zeitsignal
dt = 1/fs;
t = 0:dt:dt*(N-1);
ub = zeros(1,N);

% FFT
df = fs/N;
% Einseitiges Amplitudenspektrum
f1 = df*(0:(N/2));
P1 = zeros(1,N/2+1);
% Zweiseitiges Amplitudenspektrum
f2 = df*(0:(N-1));
P2 = zeros(1,N);

% Callback
function readData(src, ~)
    % Variablen sichtbar machen
    global t ub f1 P1 P2 idx N

    % Eine Zeile vom Serial-Port lesen
    line = readline(src);

    % String → Zahlen umwandeln (CSV → Array)
    data = str2double(split(line, ","));

    % Prüfen ob gültige Zahlen enthalten sind
    if all(~isnan(data))
        % Variable im Workspace speichern
        assignin("base", "data", data);
        ub(idx) = data(1);    % Zeitsignal
        P2(idx) = data(2);    % Komplexe Amplitude FFT

        % Konsole
        if(idx < 100)
            fprintf("idx=%d | ub=%f | P2=%f\n", idx, ub(idx), P2(idx));
        end

        % Index
        idx = idx + 1;

        % Daten STM32 darstellen
        if(idx > N)
            % Daten normieren 0...1
            % ub_norm = (ub - min(ub))/(max(ub) - min(ub));

            % Zeitsignal darstellen
            figure(1);
            tiledlayout(2,1, 'TileSpacing', 'compact', 'Padding', 'compact')
            nexttile(1);
            plot(t, ub);
            hold on;
            xlabel('Zeit [s]');
            ylabel('Amplitude [V]');
            title('Zeitsignal');
            grid on;
            xlim([min(t) max(t)]);

            % FFT darstellen
            P1 = P2(1:N/2+1);
            P1(2:end-1) = 2*P1(2:end-1);
            nexttile(2);
            loglog(f1,P1);
            hold on;
            xlabel('Frequenz [Hz]');
            ylabel('Amplitude [V]');
            title('FFT');
            grid on;
            xlim([min(f1) max(f1)]);

            % Index zurürcksetzen
            idx = 1;
        end
    else
        fprintf("Ungültig: %s\n", line);
    end
end