clc;
clear;
warning off;

%%%%%%%%%%%%%%
% parameters %
%%%%%%%%%%%%%%
myURL = 'https://36kr.com/newsflashes';
%format = '<a href="(http|https)://([\w_-]+(?:(?:\.[\w_-]+)+))([\w.,@?^=%&:/~+#-]*[\w@?^=%&/~+#-])?"'; % ()中为target
%format = '(http|https)://.*?\.(htm|shtm|html|shtml|PDF)';
format = '<a href="(http|https)://(.+)" target="_blank"';
%%%%%%%%%%%%%%%%%%
% initialization %
%%%%%%%%%%%%%%%%%%
tic;
[sourcefile, status] = urlread(myURL,'Timeout',5);
anti_spider = 0;
while ~status % 反反爬虫循环
    [sourcefile, status] = urlread(myURL);
    anti_spider = anti_spider + 1;
end
fprintf('加载网页耗时%0.4fs，遭遇%d次反爬虫机制。\n',toc,anti_spider)

%%%%%%%%%%
% spider %
%%%%%%%%%%
tic;
fprintf('正在抓取回复数量...')
% match返回整个匹配类型format，类型为cell
% token返回（）标记的位置target，类型为cell
hyperlinks = regexp(sourcefile,'<a.*?/a>','match');
[data_format, data_target]= regexpi(sourcefile,format,'match','tokens');
data = cell(size(data_target));
for idx = 1:length(data_target)
    data{idx} = data_target{idx}{1};
end
fprintf('%0.4fs后完成!\n',toc)
% fprintf('回复%d条。\n',data{1})