clc;
clear;
warning off;

%%%%%%%%%%%%%%
% parameters %
%%%%%%%%%%%%%%
home_page = 'https://www.dianping.com/shanghai/ch70/g27761';
page_total = 50;
excel_name = 'reborn';

%%%%%%%%%%%%%%%%%%
% initialization %
%%%%%%%%%%%%%%%%%%
regular_expressions;
data = cell(20*page_total,7);
data_length = 0;

%%%%%%%%%%%%%
% main loop %
%%%%%%%%%%%%%
for page = 1:page_total
    open_web;
    vbs_scripts;
    read_raw;
    string_match;
    assemble_data;
end

%%%%%%%%%%%%%
% csv ouput %
%%%%%%%%%%%%%
csv_output;