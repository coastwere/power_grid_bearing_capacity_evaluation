function topo = topo_reconstruction(devs_topos)

    bottom_id = [];
    for i = 1:size(devs_topos,1)
        if isempty(find(devs_topos(:,5) == devs_topos(i,1), 1))
            bottom_id = [bottom_id;devs_topos(i,1)];
        end
    end
    topo = zeros(size(devs_topos,1), length(bottom_id));
    for j = 1:length(bottom_id)
         topo_up_check_result = topo_up_check(bottom_id(j),devs_topos);
         for i = 1:length(topo_up_check_result)
            topo(i,j) = topo_up_check_result(length(topo_up_check_result)-i+1);
         end
    end
    
end