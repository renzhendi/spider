%%%%%%%%%%%%
% open web %
%%%%%%%%%%%%

fprintf('抓取第%d页的数据中.',page); tic;
[~,webpage] = web(sprintf('%sp%d',home_page,page));
pause(0.8); fprintf('.');