function [c ceq]= Crecipiente(x)
 aux1=x(1);
          aux2=x(2);
         
          aux1=floor(aux1)*0.0625;
          aux2=floor(aux2)*0.0625;


         c1=( (-1*aux1)+(0.0193*x(3)) );
     
         c2=( (-1*aux2)+ (0.00954*x(3))  );   
    
         c3=( (-3.1416*(x(3)^2)*x(4)) - ( (4.0/3.0)*3.1416*(x(3)^3) ) + 1296000.0);
         
         c4=(x(4)-240.0);

      c=[c1;c2;c3;c4];
ceq=[]; %nohay de igualdad