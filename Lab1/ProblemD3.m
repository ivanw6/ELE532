% Ivan Wang 501086429

% Problem D.3

load ELE532_Lab1_Data.mat

copyXAudio = x_audio;

count = 0;

for i = 1:20000
    if(copyXAudio(i) < 0.01) % Checks condition if the audio at index i is less than 0.01 (threshold)
        copyXAudio(i) = 0; % If so sets that index to 0
        count = count + 1; % Counter when an index is set to 0
    end
end

count % Output the number of elements that were set to 0

% Play the unchanged and changed audio
% sound(x_audio,8000)
% sound(copyXAudio,8000)