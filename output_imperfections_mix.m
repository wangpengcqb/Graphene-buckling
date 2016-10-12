clc
clear
close all

fid = fopen('randomim.txt');
data=textscan(fid,'%f');
fclose(fid);

num_nodes=20451;

randomim=data{1,1};

imperfections=randomim;

imperfections(1:51)=0;
imperfections(20401:20451)=0;
imperfections(1:51:20401)=0;
imperfections(51:51:20451)=0;

fid = fopen('imperfections.txt', 'wt');

for i=1:num_nodes
   
    fprintf(fid, '%s%d,%f,%f,%f\n','Film-1.',i,imperfections(i),0,0);
    
end

fclose(fid);