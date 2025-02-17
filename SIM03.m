clear;clc;
q0=[-1;0;-pi/2];
out = sim('kinematics_track');
T=out.tout;
X=out.yout;

t=linspace(0,50*pi,701);
da1=0.08;da2=0.04;r=1.5;
qr=[r*sin(da1*t') r*sin(da2*t')];
figure(1);
hold on;
plot(qr(:,1),qr(:,2),'Marker','*','MarkerIndices',1:5:length(t));
plot(X(:,1),X(:,2),'LineWidth',1.2);
plot(X(1,1),X(1,2),'o');
plot(X(end,1),X(end,2),'^','MarkerFaceColor','k');
axis equal;
xlabel('X(m)');
ylabel('Y(m)');
legend({'Desired Trajectory','Actual Trajectory','Start','End'},'Location','northwest');
grid on;
hold off;

qe=X(:,8:9);
d=qe.*qe;
d=sqrt(d(:,1)+d(:,2));
figure(2)
subplot(2,1,1);
plot(T,qe,'LineWidth',1.2);
xlabel('t(s)');
ylabel('q_e(m)');
grid on;
legend({'x_e','y_e'},'Location','northeast');
subplot(2,1,2);
plot(T,d,'LineWidth',1.2);
xlabel('t(s)');
ylabel('d (m)');
grid on;
legend({'d'},'Location','northeast');

t=linspace(0,120,100);
vm=0.14*ones(1,100);
figure(4);
hold on;
plot(T,X(:,6),'--','Color',"#77AC30",'LineWidth',1.2);
plot(T,X(:,10),'--','Color',"#D95319",'LineWidth',1.2);
plot(T,X(:,4),'Color',"#0072BD",'LineWidth',1.2);
plot(t,vm,'--','Color',"k",'LineWidth',1.2);
grid on;
legend({'v_d','v_r','v'});
text(120,0.14,'v_{max}');
xlabel('t(s)');
ylabel('v(m/s)');

wm=0.24*ones(1,100);
figure(5);
hold on;
plot(T,X(:,7),'--','Color',"#77AC30",'LineWidth',1.2);
plot(T,X(:,11),'--','Color',"#D95319",'LineWidth',1.2);
plot(T,X(:,5),'Color',"#0072BD",'LineWidth',1.2);
plot(t,wm,'--','Color',"k",'LineWidth',1.2);
plot(t,-wm,'--','Color',"k",'LineWidth',1.2);
grid on;
legend({'\omega_d','\omega_r','\omega'});
text(120,0.24,'\omega_{max}');
text(120,-0.24,'-\omega_{max}');
xlabel('t(s)');
ylabel('\omega(rad/s)');

