
clc
clear
load('data.mat');

[lambda, pm, max_lambda, min_pm, raw_lambda, raw_pm] = power_grid_bearing_capacity_evaluation(power_data, devs_topos);
