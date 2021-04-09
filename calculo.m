function cal=calculo(bacterias,bact,fx,svr,prob)
var=variables(prob);

               if(svr ==0 &&  bacterias(1,(var+var+2))==0)
                    if(fx < bacterias(1,(var+var+1)))
                        bacterias(1,1:var)=bact;
                        bacterias(1,(var+var+1))=fx;
                        bacterias(1,(var+var+2))=svr;
                    end
                end
                    if(svr < 0.00001 && bacterias(1,(var+var+2))<=0)  
                        bacterias(1,1:var)=bact;
                        bacterias(1,(var+var+1))=fx;
                        bacterias(1,(var+var+2))=0;
                    end  
                
                    if(svr < 0.00001 && bacterias(1,(var+var+2))> 0)      
                        bacterias(1,1:var)=bact;
                        bacterias(1,(var+var+1))=fx;
                        bacterias(1,(var+var+2))=0;
                    end  
cal=bacterias;