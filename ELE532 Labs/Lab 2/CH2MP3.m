%h1
t = (-1:0.001:5);
figure(6);
h1 = @(t) exp(t/5).*u(t);
plot(t, h1(t));
title('h1(t) vs t');
xlabel('t');
ylabel('h1(t)');
grid;
%h2
h2 = @(t) (4*exp(-t/5)).*u(t);
plot(t, h2(t));
title('h2(t) vs t');
xlabel('t');
ylabel('h2(t)');
grid;

%h3
h3 = @(t) (4*exp(-t)).*u(t);
plot(t, h3(t));
title('h3(t) vs t');
xlabel('t');
ylabel('h3(t)');
grid;

%h4
h4 = @(t) 4*(exp(-t/5)-exp(-t)).*u(t);
plot(t, h4(t));
title('h4(t) vs t');
xlabel('t');
ylabel('h4(t)');
grid;
