clc;
clear;

ie=actxserver('internetexplorer.Application');
ie.Navigate('http://www.baidu.com/');
sp=actxserver('SAPI.SpVoice');

while ~strcmp(ie.readystate,'READYSTATE_COMPLETE')
%sp.Speak('拜拜。');
end

a=urlread('http://www.baidu.com/');
expr1 = '/view/';
num= regexp(a, expr1,'end');
%{
loginname=ie.document.getElementById('输入用户名的LABEL的id');
loginname.value='用户名';
password=ie.document.getElementById('输入密码的LABEL的id'); 
password.value='密码';
submit=ie.document.getElementById('登录按钮的id');
submit.click;
delete(ie);
%}