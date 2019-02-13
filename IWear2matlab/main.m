
%% Preliminaries
clc; close all; clear all;

addpath(genpath('src'));
addpath(genpath('data'));

addpath(genpath('../src'));

opts.sensorsPos = true;

disp(strcat('[Start] wearData extraction ...'));

%% Extract data from IWearRemapper dumped file
extractWearableDataFromIWear;

%% Compute sensor position
if opts.sensorsPos
    % Optional: computation of the position of the sensors w.r.t. the frame
    %           of the attached link
    wearData = computeSuitSensorPosition(wearData, wearData.nrOfFrames);
end

%% Save struct
if ~exist(fullfile(pwd,'processed'),'dir')
    mkdir (fullfile(pwd,'processed'));
end
save(fullfile(pwd,'processed/wearData.mat'),'wearData');

disp(strcat('[End] wearData extraction'));

