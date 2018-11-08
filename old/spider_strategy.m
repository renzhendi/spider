clc;
clear;
warning off;

%%%%%%%%%%%%%%
% parameters %
%%%%%%%%%%%%%%
page_total = 1;%50;
entry_pp = 15;

%%%%%%%%%%%%%%%%%%
% initialization %
%%%%%%%%%%%%%%%%%%
brand_form = '<a alt="(.*)\(.*\)"'; %Ҫ��ȡ��ģʽ��������ΪҪ��ȡ������
brnch_form = '';
add_form = '';
cost_form = '';
noprd_form = '';
nocmt_form = '';
rate_form = '';
data = cell(1,page_total*entry_pp);

%%%%%%%%%%%%%
% main loop %
%%%%%%%%%%%%%
for page = 1:page_total
    fprintf('ץȡ��%dҳ��������...',page)
    [sourcefile,status] = urlread(sprintf('https://www.dianping.com/shanghai/ch70/g27761p%d',page));
    if ~status %�ж������Ƿ�ȫ����ȡ�ɹ�
        error('��������Ŷ�����飡\n')
    end
    [~,brands]= regexp(sourcefile,brand_form,'match','tokens');   %match��������ƥ�����ͣ�token���أ�����ǵ�λ�ã���ΪԪ������
    date = cell(size(brands));         %����һ���ȴ��Ԫ������
    for idx = 1:length(brands)
        date{idx} = brands{idx}{1};    %������д��
    end
    
    %     data = reshape(data, 6, length(data)/6 )'; %���ţ�����Դ�������ʾ������ͬ����������ų�����
    %     items={'Ʒ��' '�ֵ�' '��ַ' '�˾�' '��Ʒ����' '��������' '����'};
    %     xlswrite('C:/Users/���ȕF/Documents/MATLAB/Yitu/spider/databin/strategy',items)
    %     xlswrite('C:/Users/���ȕF/Documents/MATLAB/Yitu/spider/databin/strategy',data,'A2');
    fprintf('���!\n')
end

% fprintf('���ݱ�����data����У���ע��鿴��\n')