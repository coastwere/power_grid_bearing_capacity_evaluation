function [lambda,pm] = lambda_pm_update_by_topo(raw_lambda, raw_pm, topo)
    
    pm = raw_pm;
    lambda = raw_lambda;
    for topo_col = 1:size(topo,2)
        for topo_row = 1:size(topo,1)-1
            if topo(topo_row+1, topo_col) ~= 0
                [lambda, pm] = lambda_pm_compare_substitution(lambda, pm, topo(topo_row, topo_col), topo(topo_row+1, topo_col));
            else
                break
            end
        end
    end
 




end