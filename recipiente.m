function f=recipiente(x) 
aux1=x(1);
          aux2=x(2);
         
          aux1=floor(aux1)*0.0625;
          aux2=floor(aux2)*0.0625;
                 
 f= (0.6224*aux1*x(3)*x(4))+ (1.7781*aux2*(x(3)^2))+(3.1661*(aux1^2)*x(4))+(19.84*(aux1^2)*x(3));

end