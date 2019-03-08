opts = spreadsheetImportOptions("NumVariables", 3);

opts.Sheet = "Sheet1";
opts.DataRange = "A2:C430";

opts.VariableNames = ["Latitude", "Longitude", "TotalDrugReportsCounty"];
opts.VariableTypes = ["double", "double", "double"];

num = readtable("D:\C_Document\MATLAB\data.xls", opts, "UseExcel", false);

num = table2array(num);
num(:,3) = num(:,3) / 10;

clear opts
num;
lat = num(1:end,1);
lng = num(1:end,2);
drug = num(1:end,3);
[type,center] = kmeans(num,30);
plot3(lng,lat,drug,'b.','markersize',6);
hold on;
plot3(center(:,2),center(:,1),center(:,3),'ro','markersize',12);
fprintf('%5.2f %5.2f %5.2f\n',center');
fprintf('%d\n',type);
clear;