%%%%%%%%%%%%%%%%
% string match %
%%%%%%%%%%%%%%%%

brand_brnch = regexp(sourcefile,brand_form,'match');   %match��������ƥ�����ͣ�tokens���أ�����ǵ�λ�ã���ΪԪ������
address = regexp(sourcefile,add_form,'tokens');
avgcost = regexp(sourcefile,cost_form,'tokens');
product = regexp(sourcefile,noprd_form,'tokens');
comment = regexp(sourcefile,nocmt_form,'tokens');
ratings = regexp(sourcefile,rate_form,'tokens');