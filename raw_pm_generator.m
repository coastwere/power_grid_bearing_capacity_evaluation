function raw_pm = raw_pm_generator(power_data, devs_topos)
    
    raw_pm = zeros(size(power_data));
    for i = 1:size(devs_topos,1)
        raw_pm(i,:) = 0.8 * str2double(devs_topos(i,3)) + power_data(i,:);
        if devs_topos(i, 4) == "220"
                pm_temp =  power_data(i,:) - sum(power_data(devs_topos(:,4) == "集中式光伏电站",:),1);
                for j = 1:length(pm_temp)
                    if pm_temp(j) < raw_pm(i,j)
                        raw_pm(i,j) = pm_temp(j);
                    end
                end
        end
    end
    raw_pm(raw_pm<0) = 0;


end