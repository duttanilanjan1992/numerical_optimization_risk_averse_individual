clc;
close all;
clear all;
data1 = importdata('alpha.xlsx');
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
for j=1:21 
for k=1:21
   a = cA(k)*cE(k)*(1-cC(k)*cD(j))+0.0001;
   b = cB(k)*cE(k)*(1-cC(k)*cD(j));
   low=cA(k)*cE(k)*(1-cC(k)*cD(j))+0.0001;
   ab = 0;
   %result(k,3) = 0;
   fa = real(quant(a,cA(k),cB(k),cC(k),cD(j),cE(k),cF(k),cG(k),cH(k),cI(k),spot,c,m1,1,gp));
   fb = real(quant(b,cA(k),cB(k),cC(k),cD(j),cE(k),cF(k),cG(k),cH(k),cI(k),spot,c,m1,1,gp));
   %result(k,5)=fa*fb;
   if (fa*fb)<0
   while abs(fa*fb)>0.00000000000000001
       fa = real(quant(a,cA(k),cB(k),cC(k),cD(j),cE(k),cF(k),cG(k),cH(k),cI(k),spot,c,m1,1,gp));
       fb = real(quant(b,cA(k),cB(k),cC(k),cD(j),cE(k),cF(k),cG(k),cH(k),cI(k),spot,c,m1,1,gp));
       %ab = ((a*fb)-(b*fa))/(fb-fa);
       ab = (a+b)/2;
       fab= real(quant(ab,cA(k),cB(k),cC(k),cD(j),cE(k),cF(k),cG(k),cH(k),cI(k),spot,c,m1,1,gp));
       if (fa*fab)<0
           b=ab;
       else
           if (fa*fab)>0
           a=ab;
           else
               break
           end
       end
       %result(k,3)=result(k,3)+1;
   end
   end
   if ab > low
       result(k,j)= ab;
   else
       result(k,j)=low;
   end
end
end