function[pie] = prof(q,xmin,xmax,beta,t,R,loss,gam,risk,alpha,sp,ci,m,K,g)
theta= exp(-beta*t);
v =-ci+(m*(K+(1/(1+(alpha*t)))))+g;
hatq = q/theta;
pie= (v*theta*hatq)-((sp*theta*((hatq - R*xmin)^2))/(2*R*(xmax-xmin)));
end