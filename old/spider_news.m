clc;
clear;
warning off;

%%%%%%%%%%%%%%
% parameters %
%%%%%%%%%%%%%%
myURL = 'https://36kr.com/newsflashes';
%format = '<a href="(http|https)://([\w_-]+(?:(?:\.[\w_-]+)+))([\w.,@?^=%&:/~+#-]*[\w@?^=%&/~+#-])?"'; % ()��Ϊtarget
%format = '(http|https)://.*?\.(htm|shtm|html|shtml|PDF)';
format = '<a href="(http|https)://(.+)" target="_blank"';
%%%%%%%%%%%%%%%%%%
% initialization %
%%%%%%%%%%%%%%%%%%
tic;
[sourcefile, status] = urlread(myURL,'Timeout',5);
anti_spider = 0;
while ~status % ��������ѭ��
    [sourcefile, status] = urlread(myURL);
    anti_spider = anti_spider + 1;
end
fprintf('������ҳ��ʱ%0.4fs������%d�η�������ơ�\n',toc,anti_spider)

%%%%%%%%%%
% spider %
%%%%%%%%%%
tic;
fprintf('����ץȡ�ظ�����...')
% match��������ƥ������format������Ϊcell
% token���أ�����ǵ�λ��target������Ϊcell
hyperlinks = regexp(sourcefile,'<a.*?/a>','match');
[data_format, data_target]= regexpi(sourcefile,format,'match','tokens');
data = cell(size(data_target));
for idx = 1:length(data_target)
    data{idx} = data_target{idx}{1};
end
fprintf('%0.4fs�����!\n',toc)
% fprintf('�ظ�%d����\n',data{1})