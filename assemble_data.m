%%%%%%%%%%%%%%%%%
% assemble data %
%%%%%%%%%%%%%%%%%

page_length = length(brand_brnch);
data_start = data_length;
data_length = data_length + page_length;
for i = 1:page_length
    k = data_start + i;
    bb_temp = brand_brnch{i}; bb_temp_length = length(bb_temp);
    p_l = strfind(bb_temp,'('); p_r = strfind(bb_temp,')');
    if isempty(p_l)
        p_l = bb_temp_length - 5; p_r = p_l;
    end
    data{k,1} = bb_temp(8:p_l-1);
    data{k,2} = bb_temp(p_l+1:p_r-1);
    add_temp = address{i}{1}; add_temp_length = length(add_temp);
    a_l = strfind(add_temp,'">'); a_r = strfind(add_temp,'</');
    if isempty(a_l)
        a_l = 1; a_r = 1;
    end
    data{k,3} = add_temp(a_l+2:a_r-1);
    data{k,4} = avgcost{i}{1};
    data{k,5} = product{i}{1};
    data{k,6} = comment{i}{1};
    data{k,7} = ratings{i}{1};
end
fprintf('用时%0.4f完成。\n',toc);