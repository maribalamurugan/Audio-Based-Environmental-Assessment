clc;
clear;
close all;

% AUDIO-BASED ENVIRONMENTAL NOISE ASSESSMENT

folder = pwd;

locations = {'Residential', 'Industrial', 'Traffic'};
periods = {'Morning', 'Afternoon', 'Evening'};

avgLevel = zeros(3,3);

for i = 1:3
    for j = 1:3

        filename = fullfile(folder, ...
            [lower(locations{i}), '_', ...
             lower(periods{j}), '.wav']);

        [audio, Fs] = audioread(filename);

        if size(audio,2) > 1
            audio = mean(audio,2);
        end

        audio = audio - mean(audio);

        segmentLength = Fs;
        numberOfSegments = floor(length(audio)/segmentLength);
        levels = zeros(numberOfSegments,1);

        for k = 1:numberOfSegments
            first = (k-1)*segmentLength + 1;
            last = k*segmentLength;
            segment = audio(first:last);

            rmsValue = sqrt(mean(segment.^2));
            levels(k) = 20*log10(max(rmsValue,1e-12));
        end

        avgLevel(i,j) = mean(levels);

        fprintf('%s - %s: %.2f dBFS\n', ...
            locations{i}, periods{j}, avgLevel(i,j));
    end
end

% Display results
resultTable = array2table(avgLevel, ...
    'RowNames', locations, ...
    'VariableNames', periods);

disp('Environmental Noise Assessment Results:');
disp(resultTable);

% Graph 1: Compare morning, afternoon and evening
figure;
bar(avgLevel');
set(gca,'XTickLabel',periods);
xlabel('Time Period');
ylabel('Relative Audio Level (dBFS)');
title('Noise Level Comparison');
legend(locations,'Location','best');
grid on;

% Graph 2: Compare the three locations
figure;
bar(mean(avgLevel,2));
set(gca,'XTickLabel',locations);
ylabel('Relative Audio Level (dBFS)');
title('Average Level by Location');
grid on;

% Save results
writetable(resultTable, ...
    'environmental_noise_results.csv', ...
    'WriteRowNames',true);

save('environmental_noise_results.mat','avgLevel');

disp('Analysis completed successfully!');
