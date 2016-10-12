clc
clear
close all

fid = fopen('periodicBC.txt', 'wt');

for i=1:51
    
    fprintf(fid, '%s\n',strcat('*Nset, nset=l',num2str(i),', instance=Film-1'));
    fprintf(fid, '%s\n',strcat(num2str(i),','));
    fprintf(fid, '%s\n',strcat('*Nset, nset=r',num2str(i),', instance=Film-1'));
    fprintf(fid, '%s\n',strcat(num2str(20400+i),','));
    
end

for i=1:401
    j=(i-1)*51+1;
    fprintf(fid, '%s\n',strcat('*Nset, nset=u',num2str(i),', instance=Film-1'));
    fprintf(fid, '%s\n',strcat(num2str(j),','));
    fprintf(fid, '%s\n',strcat('*Nset, nset=d',num2str(i),', instance=Film-1'));
    fprintf(fid, '%s\n',strcat(num2str(50+j),','));
    
end

i=1;
fprintf(fid, '%s\n','*Equation');
fprintf(fid, '%s\n','2');
fprintf(fid, '%s\n',strcat('l',num2str(i),', 1, 1.'));
fprintf(fid, '%s\n',strcat('r',num2str(i),', 1, -1.'));
fprintf(fid, '%s\n','*Equation');
fprintf(fid, '%s\n','2');
fprintf(fid, '%s\n',strcat('l',num2str(i),', 4, 1.'));
fprintf(fid, '%s\n',strcat('r',num2str(i),', 4, -1.'));
fprintf(fid, '%s\n','*Equation');
fprintf(fid, '%s\n','2');
fprintf(fid, '%s\n',strcat('l',num2str(i),', 5, 1.'));
fprintf(fid, '%s\n',strcat('r',num2str(i),', 5, -1.'));
fprintf(fid, '%s\n','*Equation');
fprintf(fid, '%s\n','2');
fprintf(fid, '%s\n',strcat('l',num2str(i),', 6, 1.'));
fprintf(fid, '%s\n',strcat('r',num2str(i),', 6, -1.'));

for i=2:50
    
    fprintf(fid, '%s\n','*Equation');
    fprintf(fid, '%s\n','2');
    fprintf(fid, '%s\n',strcat('l',num2str(i),', 1, 1.'));
    fprintf(fid, '%s\n',strcat('r',num2str(i),', 1, -1.'));
    fprintf(fid, '%s\n','*Equation');
    fprintf(fid, '%s\n','2');
    fprintf(fid, '%s\n',strcat('l',num2str(i),', 2, 1.'));
    fprintf(fid, '%s\n',strcat('r',num2str(i),', 2, -1.'));
    fprintf(fid, '%s\n','*Equation');
    fprintf(fid, '%s\n','2');
    fprintf(fid, '%s\n',strcat('l',num2str(i),', 4, 1.'));
    fprintf(fid, '%s\n',strcat('r',num2str(i),', 4, -1.'));
    fprintf(fid, '%s\n','*Equation');
    fprintf(fid, '%s\n','2');
    fprintf(fid, '%s\n',strcat('l',num2str(i),', 5, 1.'));
    fprintf(fid, '%s\n',strcat('r',num2str(i),', 5, -1.'));
    fprintf(fid, '%s\n','*Equation');
    fprintf(fid, '%s\n','2');
    fprintf(fid, '%s\n',strcat('l',num2str(i),', 6, 1.'));
    fprintf(fid, '%s\n',strcat('r',num2str(i),', 6, -1.'));
    
end

i=51;
fprintf(fid, '%s\n','*Equation');
fprintf(fid, '%s\n','2');
fprintf(fid, '%s\n',strcat('l',num2str(i),', 1, 1.'));
fprintf(fid, '%s\n',strcat('r',num2str(i),', 1, -1.'));
fprintf(fid, '%s\n','*Equation');
fprintf(fid, '%s\n','2');
fprintf(fid, '%s\n',strcat('l',num2str(i),', 4, 1.'));
fprintf(fid, '%s\n',strcat('r',num2str(i),', 4, -1.'));
fprintf(fid, '%s\n','*Equation');
fprintf(fid, '%s\n','2');
fprintf(fid, '%s\n',strcat('l',num2str(i),', 5, 1.'));
fprintf(fid, '%s\n',strcat('r',num2str(i),', 5, -1.'));
fprintf(fid, '%s\n','*Equation');
fprintf(fid, '%s\n','2');
fprintf(fid, '%s\n',strcat('l',num2str(i),', 6, 1.'));
fprintf(fid, '%s\n',strcat('r',num2str(i),', 6, -1.'));

for i=2:400
    
    fprintf(fid, '%s\n','*Equation');
    fprintf(fid, '%s\n','2');
    fprintf(fid, '%s\n',strcat('u',num2str(i),', 1, 1.'));
    fprintf(fid, '%s\n',strcat('d',num2str(i),', 1, -1.'));
    fprintf(fid, '%s\n','*Equation');
    fprintf(fid, '%s\n','2');
    fprintf(fid, '%s\n',strcat('u',num2str(i),', 3, 1.'));
    fprintf(fid, '%s\n',strcat('d',num2str(i),', 3, -1.'));
    fprintf(fid, '%s\n','*Equation');
    fprintf(fid, '%s\n','2');
    fprintf(fid, '%s\n',strcat('u',num2str(i),', 4, 1.'));
    fprintf(fid, '%s\n',strcat('d',num2str(i),', 4, -1.'));
    fprintf(fid, '%s\n','*Equation');
    fprintf(fid, '%s\n','2');
    fprintf(fid, '%s\n',strcat('u',num2str(i),', 5, 1.'));
    fprintf(fid, '%s\n',strcat('d',num2str(i),', 5, -1.'));
    fprintf(fid, '%s\n','*Equation');
    fprintf(fid, '%s\n','2');
    fprintf(fid, '%s\n',strcat('u',num2str(i),', 6, 1.'));
    fprintf(fid, '%s\n',strcat('d',num2str(i),', 6, -1.'));
    
end


i=401;
fprintf(fid, '%s\n','*Equation');
fprintf(fid, '%s\n','2');
fprintf(fid, '%s\n',strcat('u',num2str(i),', 1, 1.'));
fprintf(fid, '%s\n',strcat('d',num2str(i),', 1, -1.'));
fprintf(fid, '%s\n','*Equation');
fprintf(fid, '%s\n','2');
fprintf(fid, '%s\n',strcat('u',num2str(i),', 4, 1.'));
fprintf(fid, '%s\n',strcat('d',num2str(i),', 4, -1.'));
fprintf(fid, '%s\n','*Equation');
fprintf(fid, '%s\n','2');
fprintf(fid, '%s\n',strcat('u',num2str(i),', 5, 1.'));
fprintf(fid, '%s\n',strcat('d',num2str(i),', 5, -1.'));
fprintf(fid, '%s\n','*Equation');
fprintf(fid, '%s\n','2');
fprintf(fid, '%s\n',strcat('u',num2str(i),', 6, 1.'));
fprintf(fid, '%s\n',strcat('d',num2str(i),', 6, -1.'));

fclose(fid);
