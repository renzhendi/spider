function [links, locations] = xls_hyperlink(file, sheet)
   %retrieve all hyperlinks and their location in an excel worksheet
   %syntax:
   %    [links, locations] = xlsgethyperlinks(file);
   %    [links, locations] = xlsgethyperlinks(file, sheet);
   %with:
   %    file: full path of the excel workbook (scalar string / char vector)
   %    sheet: name or index of worksheet (scalar string / char vector / scalar positive integer). Default is 1
   %    links: column cell vector of hyperlink targets in the order returned by excel
   %    locations: column cell vector of char vectors containing the location of the hyperlinks in the sheet, in RC format
   %    Author: G. de Sercey
   %    BSD license
   if nargin < 2
       sheet = 1;
   end
   %todo: add input validation
   %The code starts excel, load the workbook, then iterates over all the hyperlinks in the worksheet storing the hyperlink address and the range address of the hyperlinks.
   %excel is closed automatically by the onCleanup when the function terminates (normally or due to errors).
   excel = actxserver('Excel.Application');
   cleanup = onCleanup(@() excel.Quit);
   workbook = excel.Workbooks.Open(file);
   worksheet = workbook.Worksheets.Item(sheet);
   hyperlinks = worksheet.Hyperlinks;
   links = cell(hyperlinks.Count, 1);
   locations = cell(hyperlinks.Count, 1);
   for hidx = 1:hyperlinks.Count
      hyperlink = hyperlinks.Item(hidx);
      links{hidx} = hyperlink.Address;
      locations{hidx} = hyperlink.Range.Address;
   end
end