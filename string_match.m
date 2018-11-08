%%%%%%%%%%%%%%%%
% string match %
%%%%%%%%%%%%%%%%

brand_brnch = regexp(sourcefile,brand_form,'match');   %match返回整个匹配类型，tokens返回（）标记的位置，都为元胞类型
address = regexp(sourcefile,add_form,'tokens');
avgcost = regexp(sourcefile,cost_form,'tokens');
product = regexp(sourcefile,noprd_form,'tokens');
comment = regexp(sourcefile,nocmt_form,'tokens');
ratings = regexp(sourcefile,rate_form,'tokens');