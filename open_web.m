%%%%%%%%%%%%
% open web %
%%%%%%%%%%%%

fprintf('ץȡ��%dҳ��������.',page); tic;
[~,webpage] = web(sprintf('%sp%d',home_page,page));
pause(0.8); fprintf('.');