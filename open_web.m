%%%%%%%%%%%%
% open web %
%%%%%%%%%%%%

fprintf('抓取第%d页的数据中.',page); tic;
[~,webpage] = web(sprintf('https://www.dianping.com/shanghai/ch70/g27761p%d',page));
pause(0.8); fprintf('.');