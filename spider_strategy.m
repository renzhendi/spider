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
brand_form = '<a alt="(.*)\(.*\)"'; %要提取的模式，（）中为要提取的内容
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
    fprintf('抓取第%d页的数据中...',page)
    [sourcefile,status] = urlread(sprintf('https://www.dianping.com/shanghai/ch70/g27761p%d',page));
    if ~status %判断数据是否全部读取成功
        error('出问题了哦，请检查！\n')
    end
    [~,brands]= regexp(sourcefile,brand_form,'match','tokens');   %match返回整个匹配类型，token返回（）标记的位置，都为元胞类型
    date = cell(size(brands));         %创建一个等大的元胞数组
    for idx = 1:length(brands)
        date{idx} = brands{idx}{1};    %将日期写入
    end
    
    %     data = reshape(data, 6, length(data)/6 )'; %重排，根据源代码的显示，将不同定义的数据排成六列
    %     items={'品牌' '分店' '地址' '人均' '产品数量' '点评数量' '评级'};
    %     xlswrite('C:/Users/吴奕旻/Documents/MATLAB/Yitu/spider/databin/strategy',items)
    %     xlswrite('C:/Users/吴奕旻/Documents/MATLAB/Yitu/spider/databin/strategy',data,'A2');
    fprintf('完成!\n')
end

% fprintf('数据保存在data表格中，请注意查看！\n')