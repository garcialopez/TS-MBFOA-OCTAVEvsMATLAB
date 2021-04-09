function bact=newstepsize(bacterias,stepsize,prob)
var=variablescec2010(prob);
rang=rangocec2010(prob);
[f,c]=size(bacterias);
          for i=1:f
              for j=1:var
                bacterias(i,var+j) = stepsize * ((rang(j,2) - rang(j,1)) /sqrt(var));
              end
          end

bact=bacterias;