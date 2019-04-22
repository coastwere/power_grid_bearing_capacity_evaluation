function [lambda, pm, max_lambda, min_pm, raw_lambda, raw_pm] = power_grid_bearing_capacity_evaluation(power_data, devs_topos)
    
    raw_lambda = - power_data ./ str2double(devs_topos(:,3));
    raw_pm = raw_pm_generator(power_data, devs_topos);
    
    topo = topo_reconstruction(devs_topos);
    [lambda,pm] = lambda_pm_update_by_topo(raw_lambda, raw_pm, topo);
    
    max_lambda = max(lambda, [], 2);
    min_pm = min(pm, [], 2);


end