%%%%%%%%%%%%%%%%%%%%%%%
% regular expressions %
%%%%%%%%%%%%%%%%%%%%%%%

items={'品牌' '分店' '地址' '人均' '产品数量' '点评数量' '评级'};

brand_form = '<aalt=".*?\(?.*?\)?"title'; %要提取的模式，（）中为要提取的内容
add_form = 'baby-info-scraps">(.*?)<spanclass="average">';
cost_form = '<spanclass="price">.(.*?)</span>';
noprd_form = '该商户有(\d*?)';
nocmt_form = '>(\d*?)封点评</a>';
rate_form = 'irr-star(\d*?)"><';