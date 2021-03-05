% Add outliers.
%%
% % Load Data.
% addpath('data')
% load('datasetENEEB.mat');
%%
% Check size of the matrix.
[rows, cols] = size(TRAIN);

% add noise to specific channels 
noise_reps=100;
for i=1:noise_reps
    ch=randi([1,40], 1);
    samp=randi([1,cols], 1);
    TRAIN(ch, samp)=(rand*200)-100;
end