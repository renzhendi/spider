%%%%%%%%%%%%
% read raw %
%%%%%%%%%%%%

temp = fopen('raw.txt','r');
sourcefile = fscanf(temp,'%s');
fclose(temp);