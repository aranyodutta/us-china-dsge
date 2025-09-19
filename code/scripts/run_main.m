% run_main.m — entry point for US–China DSGE (M2)

clear; clc;

% Put Dynare on the path (edit if needed)
% addpath('C:/dynare/6.4/matlab');

% ---- Resolve project paths (no hard-coded CDs) ----
scriptsDir = fileparts(mfilename('fullpath'));
projRoot   = fileparts(fileparts(scriptsDir));
dataDir    = fullfile(projRoot,'data');
dynareDir  = fullfile(projRoot,'code','dynare');
resIRFDir  = fullfile(projRoot,'results','irfs');
resEstDir  = fullfile(projRoot,'results','estimation');

% Let Dynare see the dataset (data_5.m) during estimation
addpath(dataDir);

% ---- Build in a temp folder OFF OneDrive to avoid file locks ----
buildDir = fullfile(tempdir, 'us_china_dsge_build');
if exist(buildDir,'dir'), rmdir(buildDir,'s'); end
mkdir(buildDir);

% Copy only the model file into the temp build dir
copyfile(fullfile(dynareDir,'model13.mod'), buildDir);

% Run Dynare in the temp build dir
orig = pwd; cleanup = onCleanup(@() cd(orig));
cd(buildDir);
dynare model13 noclearall
cd(orig);

% ---- Save outputs back into the repo ----
if ~exist(resIRFDir,'dir'), mkdir(resIRFDir); end
if ~exist(resEstDir,'dir'), mkdir(resEstDir); end

save(fullfile(resEstDir,'estimation_outputs.mat'), 'oo_', 'M_', '-v7.3');

if isfield(oo_, 'irfs')
    fn = fieldnames(oo_.irfs);
    for k = 1:numel(fn)
        writematrix(oo_.irfs.(fn{k}), fullfile(resIRFDir,[fn{k} '.csv']));
    end
end

disp('Complete: results in /results/estimation and /results/irfs');
