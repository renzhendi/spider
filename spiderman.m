clc;
clear;
warning off;

%%%%%%%%%%%%%%
% parameters %
%%%%%%%%%%%%%%
page_total = 1;%50;
excel_name = 'reborn';

%%%%%%%%%%%%%%%%%%
% initialization %
%%%%%%%%%%%%%%%%%%
regular_expressions;
items={'Ʒ��' '�ֵ�' '��ַ' '�˾�' '��Ʒ����' '��������' '����'};
output_path = sprintf('',excel_name);
data = cell(20*page_total,7);
data_length = 0;

%%%%%%%%%%%%%
% main loop %
%%%%%%%%%%%%%
for page = 1:page_total
    fprintf('ץȡ��%dҳ��������.',page);
    webpage = web(sprintf('https://www.dianping.com/shanghai/ch70/g27761p%d',page));
    pause(0.8); fprintf('.');
    vbs_scripts;
    temp=fopen('raw.txt','r');
    sourcefile=fscanf(temp,'%s');
    fclose(temp);
    [~,brands]= regexp(sourcefile,brand_form,'match','tokens');   %match��������ƥ�����ͣ�token���أ�����ǵ�λ�ã���ΪԪ������
    date = cell(size(brands));         %����һ���ȴ��Ԫ������
    for idx = 1:length(brands)
        date{idx} = brands{idx}{1};    %������д��
    end
end

%%%%%%%%%%%%%
% csv ouput %
%%%%%%%%%%%%%
csv_output;