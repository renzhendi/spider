%%%%%%%%%%%%
% open web %
%%%%%%%%%%%%

fprintf('ץȡ��%dҳ��������.',page); tic;
[~,webpage] = web(sprintf('https://www.dianping.com/shanghai/ch70/g27761p%d',page));
pause(0.8); fprintf('.');