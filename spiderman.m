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
items={'品牌' '分店' '地址' '人均' '产品数量' '点评数量' '评级'};
output_path = sprintf('',excel_name);
data = cell(20*page_total,7);
data_length = 0;

%%%%%%%%%%%%%
% main loop %
%%%%%%%%%%%%%
for page = 1:page_total
    fprintf('抓取第%d页的数据中.',page);
    webpage = web(sprintf('https://www.dianping.com/shanghai/ch70/g27761p%d',page));
    pause(0.8); fprintf('.');
    vbs_scripts;
    temp=fopen('raw.txt','r');
    sourcefile=fscanf(temp,'%s');
    fclose(temp);
    [~,brands]= regexp(sourcefile,brand_form,'match','tokens');   %match返回整个匹配类型，token返回（）标记的位置，都为元胞类型
    date = cell(size(brands));         %创建一个等大的元胞数组
    for idx = 1:length(brands)
        date{idx} = brands{idx}{1};    %将日期写入
    end
end

%%%%%%%%%%%%%
% csv ouput %
%%%%%%%%%%%%%
csv_output;