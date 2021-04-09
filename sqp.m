function [bact,fx,svr,evals]=sqp(bacteria,prob)
rang=rangoVariables(prob);
var=numVariables(prob);
Lb=zeros(1,var);
Ub=zeros(1,var);
for i=1:var
Lb(i)=rang(i,1);
Ub(i)=rang(i,2);
end

x0=bacteria(1:var);

 options = optimset('LargeScale','off','Display','iter', 'MaxFunEvals',5000, 'MaxIter', 1000, 'Tolcon',0, 'TolFun',0); %
  
 switch (prob)
     case 1
 [x,fmin,flag,output]=fmincon('fobj1',x0,[],[],[],[],Lb,Ub,'constraint1',options);
 bact=x;
 fx=fmin;
 svr=output.constrviolation;
 evals=output.funcCount;
  
 case 2
 [x,fmin,flag,output]=fmincon('fobj2',x0,[],[],[],[],Lb,Ub,'constraint2',options);
 bact=x;
 fx=fmin;
 svr=output.constrviolation;
 evals=output.funcCount;
 
 case 3
 [x,fmin,flag,output]=fmincon('fobj3',x0,[],[],[],[],Lb,Ub,'constraint3',options);
 bact=x;
 fx=fmin;
 svr=output.constrviolation;
 evals=output.funcCount;
 
 case 4
 [x,fmin,flag,output]=fmincon('fobj',x0,[],[],[],[],Lb,Ub,'constraint',options);
 bact=x;
 fx=fmin;
 svr=output.constrviolation;
 evals=output.funcCount;
 end