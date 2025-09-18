% run_main.m — entry point for US–China DSGE (M2)
% Requirements: MATLAB R2023b (example), Dynare 6.4 on path

clear; clc;

% 0) Dynare path (EDIT THIS for your machine)
% addpath('C:/dynare/6.4/matlab');

% 1) Load U.S. data (dy, dinfl, dr)
cd('../../data');
run('data_5.m');           % defines dy, dinfl, dr  (see data_5.m)
cd('../code/scripts');

addpath('../../data');


% 2) Run model with estimation (model13.mod)
cd('../dynare');
dynare model13 noclearall
cd('../scripts');

% 3) Save outputs (IRFs/estimation objects) to results/
if ~exist('../../results/irfs','dir');        mkdir('../../results/irfs');        end
if ~exist('../../results/estimation','dir');  mkdir('../../results/estimation');  end

% Save Dynare structures (lightweight)
save('../../results/estimation/estimation_outputs.mat', 'oo_', 'M_', '-v7.3');

% Optional: dump selected IRFs to CSV if present
if isfield(oo_, 'irfs')
    fn = fieldnames(oo_.irfs);
    for k = 1:numel(fn)
        v = oo_.irfs.(fn{k});
        writematrix(v, ['../../results/irfs/', fn{k}, '.csv']);
    end
end

disp('Complete: results in /results/estimation and /results/irfs');
