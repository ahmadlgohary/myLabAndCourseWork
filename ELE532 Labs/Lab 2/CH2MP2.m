%b1
figure(1) 
u = @(t) 1.0*(t>=0);
x = @(t) 1.5*sin(pi*t).*(u(t)-u(t-1));
h = @(t) 1.5*(u(t)-u(t-1.5))-u(t-2)+u(t-2.5);
dtau = 0.005;
tau = -1:dtau:4;
ti = 0;
tvec = -0.25:0.1:2.25;
y = NaN*zeros(1,length(tvec));
for t = tvec
    ti = ti+1;
    xh = x(t-tau).*h(tau);
    lxh = length(xh);
    y(ti) = sum(xh.*dtau);
    subplot(2,1,1), plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)], [zeros(1,lxh-1);
        xh(1:end-1);
        xh(2:end);
        zeros(1,lxh-1)], [0.8 0.8 0.8], 'edgecolor', 'none');
    xlabel('\tau');
    title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
    c = get(gca, 'children');
    set(gca, 'children', [c(2);c(3);c(4);c(1)]);
    subplot(2,1,2), plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t');
    ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]);
    grid;
    %pause;
    drawnow;
end
%b2
figure(2)
m = @(t) u(t)-u(t-2);
n = @(t) (t+1).*(u(t+1)-u(t));
dtau = 0.005;
tau = -2:dtau:3;
ti = 0;
tvec = -1.5:0.1:3;
y = NaN*zeros(1,length(tvec));
for t = tvec
    ti = ti+1;
    mh = m(t-tau).*n(tau);
    lmh = length(mh);
    y(ti) = sum(mh.*dtau);
    subplot(2,1,1), plot(tau,n(tau),'k-',tau,m(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)], [zeros(1,lmh-1);
        mh(1:end-1);
        mh(2:end);zeros(1,lmh-1)], [0.8 0.8 0.8], 'edgecolor', 'none');
    xlabel('\tau');
    title('n(\tau) [solid], m(t-\tau) [dashed], n(\tau)m(t-\tau) [gray]');
    c = get(gca, 'children');
    set(gca, 'children', [c(2);c(3);c(4);c(1)]);
    subplot(2,1,2), plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t');
    ylabel('y(t) = \int n(\tau)m(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]);
    grid;
    drawnow;
end
%b3
figure(4)
y1 = @(t) 0.5*(u(t-3)-u(t-5));
y2 = @(t) u(t+5)-u(t+3);
dtau = 0.005;
tau = -6:dtau:4;
ti = 0;
tvec = -3:0.1:3;
y = NaN*zeros(1,length(tvec));
for t = tvec
    ti = ti+1;
    y1h = y1(t-tau).*y2(tau);
    ly1h = length(y1h);
    y(ti) = sum(y1h.*dtau);
    subplot(2,1,1), plot(tau,y2(tau),'k-',tau,y1(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)], [zeros(1,ly1h-1);y1h(1:end-1);
        y1h(2:end);zeros(1,ly1h-1)], [0.8 0.8 0.8], 'edgecolor', 'none');
    xlabel('\tau');
    title('y2(\tau) [solid], y1(t-\tau) [dashed], y2(\tau)y1(t-\tau) [gray]');
    c = get(gca, 'children');
    set(gca, 'children', [c(2);c(3);c(4);c(1)]);
    subplot(2,1,2), plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t');
    ylabel('y(t) = \int y2(\tau)y1(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]);
    grid;
    drawnow;
end

figure(5)
z1 = @(t) exp(t).*(u(t+2)-u(t));
z2 = @(t) exp(-2*t).*(u(t)-u(t-1));
dtau = 0.005;
tau = -4:dtau:3;
ti = 0;
tvec = -3:0.1:2;
y = NaN*zeros(1,length(tvec));
for t = tvec
    ti = ti+1;
    z1h = z1(t-tau).*z2(tau);
    lz1h = length(z1h);
    y(ti) = sum(z1h.*dtau);
    subplot(2,1,1), plot(tau,z2(tau),'k-',tau,z1(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)], [zeros(1,lz1h-1);
        z1h(1:end-1);z1h(2:end);zeros(1,lz1h-1)], [0.8 0.8 0.8], 'edgecolor', 'none');
    xlabel('\tau');
    title('z2(\tau) [solid], z1(t-\tau) [dashed], z2(\tau)z1(t-\tau) [gray]');
    c = get(gca, 'children');
    set(gca, 'children', [c(2);c(3);c(4);c(1)]);
    subplot(2,1,2), plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t');
    ylabel('y(t) = \int z2(\tau)z1(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]);
    grid;
    drawnow;
end


