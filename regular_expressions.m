%%%%%%%%%%%%%%%%%%%%%%%
% regular expressions %
%%%%%%%%%%%%%%%%%%%%%%%

brand_form = '<aalt=".*?\(?.*?\)?"title'; %Ҫ��ȡ��ģʽ��������ΪҪ��ȡ������
% brnch_form = '<aalt=".*?\(?(.*?)\)?"title';
% <spanclass="key-list">(.*?)</span>
add_form = 'baby-info-scraps">(.*?)<spanclass="average">';
cost_form = '<spanclass="price">.(.*?)</span>';
noprd_form = '���̻���(\d*?)';
nocmt_form = '>(\d*?)�����</a>';
rate_form = 'irr-star(\d+)"><';