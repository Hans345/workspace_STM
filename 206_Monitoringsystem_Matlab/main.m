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

% FFT Array definieren
global a idx N
N = 65536;
fs = 80e3;
df = fs/N;
f = 0:df:df*(N-1)/2;
idx = 1;
a = zeros(N/2,2);
a(:,1) = f;

% Callback
function readData(src, ~)
    % Variablen sichtbar machen
    global a idx N

    % Eine Zeile vom Serial-Port lesen
    line = readline(src);

    % String → Zahlen umwandeln (CSV → Array)
    data = str2double(split(line, ","));

    % Prüfen ob gültige Zahlen enthalten sind
    if all(~isnan(data))
        % Variable im Workspace speichern
        assignin("base", "data", data);
        a(idx,2) = data(1);

        % Konsole
        if(idx < 100)
            fprintf("idx=%d | val=%f\n", idx, data(1));
        end

        % Index
        idx = idx + 1;

        % Reset Index & Daten darstellen
        if(idx > N/2)
            loglog(a(:,1),a(:,2));
            hold on;
            grid on;
            idx = 1;
        end
    else
        fprintf("Ungültig: %s\n", line);
    end
end