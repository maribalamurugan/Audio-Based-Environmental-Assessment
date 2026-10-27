
clc;
clear;
close all;

Fs = 16000;
duration = 10;
t = (0:1/Fs:duration-1/Fs)';

locations = {'residential','industrial','traffic'};
periods = {'morning','afternoon','evening'};

amplitudes = [0.04 0.06 0.035;
              0.20 0.28 0.18;
              0.12 0.22 0.16];

frequencies = [300 450 250;
               900 1200 750;
               500 650 400];

rng(10);

for i = 1:3
    for j = 1:3
        background = randn(size(t));
        tone = sin(2*pi*frequencies(i,j)*t);

        audio = amplitudes(i,j) * ...
            (0.65*tone + 0.35*background);

        audio = audio / max(1,max(abs(audio)));

        filename = [locations{i}, '_', ...
                    periods{j}, '.wav'];

        audiowrite(filename,audio,Fs);
        fprintf('Created: %s\n',filename);
    end
end

disp('All nine audio files created successfully.');
