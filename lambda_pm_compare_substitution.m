function [lambda, pm] = lambda_pm_compare_substitution(lambda, pm, higher_row, lower_row)

    for i = 1:size(pm,2)
        if pm(higher_row,i) < pm(lower_row,i)
            pm(lower_row,i) = pm(higher_row,i);
        end
        if lambda(higher_row,i) > lambda(lower_row,i)
            lambda(lower_row,i) = lambda(higher_row,i);
        end
    end


end