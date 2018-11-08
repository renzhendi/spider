%%%%%%%%%%%%%%%%%%%%%%%
% regular expressions %
%%%%%%%%%%%%%%%%%%%%%%%

brand_form = '<aalt=".*?\(?.*?\)?"title'; %要提取的模式，（）中为要提取的内容
% brnch_form = '<aalt=".*?\(?(.*?)\)?"title';
% <spanclass="key-list">(.*?)</span>
add_form = 'baby-info-scraps">(.*?)<spanclass="average">';
cost_form = '<spanclass="price">.(.*?)</span>';
noprd_form = '该商户有(\d*?)';
nocmt_form = '>(\d*?)封点评</a>';
rate_form = 'irr-star(\d+)"><';