figure(1)
h1 = @(t) exp(t/5).*(u(t)-u(t-20));
x = @(t) sin(5*t).*(u(t)-u(t-3));
dtau = 0.005;
tau = 0:dtau:20;
ti = 0;
tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec));
for t = tvec
    ti = ti+1;
    h1h = h1(t-tau).*x(tau);
    lh1h = length(h1h);
    y(ti) = sum(h1h.*dtau);
    subplot(2,1,1), plot(tau,x(tau),'k-',tau,h1(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);
        tau(2:end);tau(2:end)], [zeros(1,lh1h-1);
        h1h(1:end-1);h1h(2:end);
        zeros(1,lh1h-1)], [0.8 0.8 0.8], 'edgecolor', 'none');
    xlabel('\tau');
    title('x(\tau) [solid], h1(t-\tau) [dashed], x(\tau)h1(t-\tau) [gray]');
    c = get(gca, 'children');
    set(gca, 'children', [c(2);c(3);c(4);c(1)]);
    subplot(2,1,2), plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t');
    ylabel('y(t) = \int x(\tau)h1(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 10.0]);
    grid;
    drawnow;
end
figure(2)
h2 = @(t) (4*exp(-t/5)).*(u(t)-u(t-20));
x = @(t) sin(5*t).*(u(t)-u(t-3));
dtau = 0.005;
tau = 0:dtau:20;
ti = 0;
tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec));
for t = tvec
    ti = ti+1;
    h2h = h2(t-tau).*x(tau);
    lh2h = length(h2h);
    y(ti) = sum(h2h.*dtau);
    subplot(2,1,1), plot(tau,x(tau),'k-',tau,h2(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],[zeros(1,lh2h-1);h2h(1:end-1);h2h(2:end);zeros(1,lh2h-1)],[0.8 0.8 0.8], 'edgecolor', 'none');
    xlabel('\tau');
    title('x(\tau) [solid], h2(t-\tau) [dashed], x(\tau)h2(t-\tau) [gray]');
    c = get(gca, 'children');
    set(gca, 'children', [c(2);c(3);c(4);c(1)]);
    subplot(2,1,2), plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t');
    ylabel('y(t) = \int x(\tau)h2(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]);
    grid;
    drawnow;
end
figure(3)
h3 = @(t) (4*exp(-t)).*(u(t)-u(t-20));
x = @(t) sin(5*t).*(u(t)-u(t-3));
dtau = 0.005;
tau = 0:dtau:20;
ti = 0;
tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec));
for t = tvec
    ti = ti+1;
    h3h = h3(t-tau).*x(tau);
    lh3h = length(h3h);
    y(ti) = sum(h3h.*dtau);
    subplot(2,1,1), plot(tau,x(tau),'k-',tau,h3(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],[zeros(1,lh3h-1);h3h(1:end-1);h3h(2:end);zeros(1,lh3h-1)],[0.8 0.8 0.8], 'edgecolor', 'none');
    xlabel('\tau');
    title('x(\tau) [solid], h3(t-\tau) [dashed], x(\tau)h3(t-\tau) [gray]');
    c = get(gca, 'children');
    set(gca, 'children', [c(2);c(3);c(4);c(1)]);
    subplot(2,1,2), plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t');
    ylabel('y(t) = \int x(\tau)h3(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]);
    grid;
    drawnow;
end
figure(4)
h4 = @(t) 4*(exp(-t/5)-exp(-t)).*(u(t)-u(t-20));
x = @(t) sin(5*t).*(u(t)-u(t-3));
dtau = 0.005;
tau = 0:dtau:20;
ti = 0;
tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec));
for t = tvec
    ti = ti+1;
    h4h = h4(t-tau).*x(tau);
    lh4h = length(h4h);
    y(ti) = sum(h4h.*dtau);
    subplot(2,1,1), plot(tau,x(tau),'k-',tau,h4(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],[zeros(1,lh4h-1);h4h(1:end-1);h4h(2:end);zeros(1,lh4h-1)],[0.8 0.8 0.8], 'edgecolor', 'none');
    xlabel('\tau');
    title('x(\tau) [solid], h4(t-\tau) [dashed], x(\tau)h4(t-\tau) [gray]');
    c = get(gca, 'children');
    set(gca, 'children', [c(2);c(3);c(4);c(1)]);
    subplot(2,1,2), plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t');
    ylabel('y(t) = \int x(\tau)h4(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]);
    grid;
    drawnow;
end