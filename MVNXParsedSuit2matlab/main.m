
%% Preliminaries
clc; close all; clear all;

addpath(genpath('src'));
addpath(genpath('external'));
addpath(genpath('data'));

opts.suitPos = true;

disp(strcat('[Start] Suit extraction ...'));

%% Extract data from C++ parsed files
extractSuitDataFromParsing;

%% Compute sensor position
if opts.suitPos
    % Optional: computation of the position of the sensors w.r.t. the frame
    %           of the attached link
    suit = computeSuitSensorPosition(suit);
end

%% Save struct
save(fullfile(pwd,'processed/suit.mat'),'suit');

disp(strcat('[End] Suit extraction'));

