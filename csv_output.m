%%%%%%%%%%%%%
% csv ouput %
%%%%%%%%%%%%%

data = data(1:data_length,:);
xlswrite(excel_name,items)
xlswrite(excel_name,data,'A2');
fprintf('ȫ����ɣ����ݱ�����%s����С�\n',excel_name);