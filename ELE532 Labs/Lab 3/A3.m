function [D]= Dn(d,n)
D1 = [0.5, 0.25, 0.5, 0.25];
D2 = (sin((n.*pi)/2))/(n.*pi);
D3 = (sin((n.*pi)/2))/(n.*pi);
if(d==1)
D=D1; end
if(d==2)
D=D2; end
if(d==3)
D=D3; end
end
