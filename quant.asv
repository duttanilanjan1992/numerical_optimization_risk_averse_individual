function[val] = quant(q,xmin,xmax,beta,t,R,loss,gam,risk,alpha,sp,ci,m,K,g)
theta= 1-(beta*t);
T1 = (q - xmin*theta*R)/(theta*R*(xmax-xmin));
T2 = (((loss*(gam^(1+risk)))+(risk*(1-gam)^risk)+(gam*(1-gam)^risk))*(q - xmin*theta*R)^risk)/((sp^(1-risk))*(theta*R*(xmax-xmin)));
T3 = (risk*(1-gam)^risk)/((sp*(q - xmin*theta*R))^(1-risk));
v =-ci+(m*(K+(1/(1+(alpha*t)))))+g;
val = T1+T2-T3-(v/sp);
end
