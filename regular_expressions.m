%%%%%%%%%%%%%%%%%%%%%%%
% regular expressions %
%%%%%%%%%%%%%%%%%%%%%%%

items={'Ʒ��' '�ֵ�' '��ַ' '�˾�' '��Ʒ����' '��������' '����'};

brand_form = '<aalt=".*?\(?.*?\)?"title'; %Ҫ��ȡ��ģʽ��������ΪҪ��ȡ������
add_form = 'baby-info-scraps">(.*?)<spanclass="average">';
cost_form = '<spanclass="price">.(.*?)</span>';
noprd_form = '���̻���(\d*?)';
nocmt_form = '>(\d*?)�����</a>';
rate_form = 'irr-star(\d*?)"><';