%%%%%%%%%%%%%
% csv ouput %
%%%%%%%%%%%%%

data = data(1:data_length,:);
sheet = '���ڵ���';
xlswrite(excel_name,items,sheet)
xlswrite(excel_name,data,sheet,'A2');
fprintf('ȫ����ɣ����ݱ�����%s����С�\n',excel_name);