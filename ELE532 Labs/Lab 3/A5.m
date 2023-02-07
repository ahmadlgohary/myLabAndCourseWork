function [D] = A5
n=-200:1:200;
w=pi.*0.1;
%D = 0.5.*(sin((3-n).*pi)./((3-n).*pi) + sin((3+n).*pi)./((3+n).*pi) + 
%0.5.*sin((1+n).*pi)./((1+n).*pi) + 0.5.*sin((1-n).*pi)./((1-n).*pi)); 
%D = (sin((n.*pi)/2)./(n.*pi));
%D = (sin((n.*pi)/4)./(n.*pi)); w=pi./20;

t=(-300:1:300);
x=zeros(size(t));
for i = 1:length(n)
 x=x+D(i).*exp(j*n(i)*w*t);
end

plot(t,x,'k')
xlabel('t');
ylabel('x(t)');
axis([-300 300 -1 2]);
grid;
