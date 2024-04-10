clc;
close all;
clear all;
data1 = importdata('low.xlsx');
cA = data1.data(:,1);
cB = data1.data(:,2);
cC = data1.data(:,3);
cD = data1.data(:,4);
cE = data1.data(:,5);
cF = data1.data(:,6);
cG = data1.data(:,7);
cH = data1.data(:,8);
cI = data1.data(:,9);
c = 14;
m1 = 10;
gp = 8;
spot = 21;
comit = data1.data(:,10);
for k=1:12
    ab=comit(k);
    result(k,1)=prof(ab,cA(k),cB(k),cC(k),cD(k),cE(k),cF(k),cG(k),cH(k),cI(k),spot,c,m1,1,gp);
    result(k,2)=real(utilexp(ab,cA(k),cB(k),cC(k),cD(k),cE(k),cF(k),cG(k),cH(k),cI(k),spot,c,m1,1,gp));
end
