clc;
clear;

ie=actxserver('internetexplorer.Application');
ie.Navigate('http://www.baidu.com/');
sp=actxserver('SAPI.SpVoice');

while ~strcmp(ie.readystate,'READYSTATE_COMPLETE')
%sp.Speak('�ݰݡ�');
end

a=urlread('http://www.baidu.com/');
expr1 = '/view/';
num= regexp(a, expr1,'end');
%{
loginname=ie.document.getElementById('�����û�����LABEL��id');
loginname.value='�û���';
password=ie.document.getElementById('���������LABEL��id'); 
password.value='����';
submit=ie.document.getElementById('��¼��ť��id');
submit.click;
delete(ie);
%}