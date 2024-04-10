function[total] = utilexp(q,xmin,xmax,beta,t,R,loss,gam,risk,alpha,sp,ci,m,K,g)
theta= exp(-beta*t);
%T1 = (q - xmin*theta*R)/(theta*R*(xmax-xmin));
%T2 = (((loss*(gam^(1+risk)))+(risk*(1-gam)^risk)+(gam*(1-gam)^risk))*(q - xmin*theta*R)^risk)/((sp^(1-risk))*(theta*R*(xmax-xmin)));
%T3 = (risk*(1-gam)^risk)/((sp*(q - xmin*theta*R))^(1-risk));
v =-ci+(m*(K+(1/(1+(alpha*t)))))+g;
hatq = q/theta;
pie= (v*theta*hatq)-((sp*theta*((hatq - R*xmin)^2))/(2*R*(xmax-xmin)));
lamb=-(loss*gam*(hatq-xmin*R)*(sp*gam*theta*(hatq-xmin*R))^(risk))/(R*sp*(xmax-xmin)*(1+risk));
G1= ((sp*(1-gam)*(hatq-xmin*R)*theta)^(1+risk))/(R*sp*(xmax - xmin)*(1+risk)*theta);
G2= (R*xmax - hatq)*((sp*theta*(1-gam)*(hatq - R*xmin))^risk)/(R*(xmax-xmin));
total= pie+lamb+G1+G2;
end
