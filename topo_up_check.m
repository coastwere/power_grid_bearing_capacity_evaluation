function topo_up_check_node = topo_up_check(data_row_i,devs_topos)
    
    topo_up_check_node = data_row_i;
    data_in_relations_row = find(devs_topos(:,1) == string(data_row_i));
    while devs_topos(data_in_relations_row,5) ~= "0"
        topo_up_check_node = [topo_up_check_node;str2double(devs_topos(data_in_relations_row, 5))];
        data_in_relations_row = find(devs_topos(:,1) == devs_topos(data_in_relations_row,5));
    end
    

end