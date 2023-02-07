clf;
%n = (-5:5);
%n = (-20:20);
%n = (-50:50);
%n = (-500:500);
%x1%
%D_n = 0.5.*(sin((3-n).*pi)./((3-n).*pi) + 
%      sin((3+n).*pi)./((3+n).*pi) + 
%      0.5.*sin((1+n).*pi)./((1+n).*pi) + 
%      0.5.*sin((1-n).*pi)./((1-n).*pi));
%x2%
%D_n = (sin((n.*pi)/2)./(n.*pi));
%x3%
%D_n = (sin((n.*pi)/4)./(n.*pi));
subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('\angle D_n [rad]');

