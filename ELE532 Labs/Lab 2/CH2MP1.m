R = [1e4, 1e4, 1e4]; C = [1e-6, 1e-6];
A = [1, (1/R(1)+1/R(2)+1/R(3))/C(2), 1/(R(1)*R(2)*C(1)*C(2))];
lambda = roots(A);
poly(lambda)
lambda = roots(A)

R = [1e4, 1e4, 1e4]; C = [1e-9, 1e-6];
A = [1, (1/R(1)+1/R(2)+1/R(3))/C(2), 1/(R(1)*R(2)*C(1)*C(2))];
lambda = roots(A);
poly(lambda)
lambda = roots(A)

t = [0:0.0005:0.1];
u = @(t) 1.0.*(t>=0);
h = @(t) (C(1).*exp(lambda(1).*t) + C(2).*exp(lambda(2).*t)).*(u(t));
plot(t,h(t));
xlabel('t');
ylabel('h(t)');
grid;
function[lambda] = CH2MP2(R,C)
A = [1, (1/R(1)+1/R(2)+1/R(3))/C(2), 1/(R(1)*R(2)*C(1)*C(2))];
lambda = roots(A);
end
