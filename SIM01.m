clear;clc;
q0=[-0.8;0;pi];Thee0=0;s0=[0;0];
out = sim('kinematics_point');
T=out.tout;
X=out.yout;
out = sim('Fabregas_et_al');
Tc=out.tout;
Xc=out.yout;

figure(1);
hold on;
plot(Xc(:,1),Xc(:,2),'LineWidth',1.2);
plot(X(:,1),X(:,2),'LineWidth',1.2);
grid on;
axis equal;
legend({'Fabregas et. al.','Proposed'});
xlabel('X(m)');
ylabel('Y(m)');

figure(2);
hold on;
plot(Tc,Xc(:,4),'LineWidth',1.2);
plot(T,X(:,4),'LineWidth',1.2);
grid on;
legend({'Fabregas et. al.','Proposed'});
xlabel('t(s)');
ylabel('v(m/s)');

figure(3);
hold on;
plot(Tc,Xc(:,5),'LineWidth',1.2);
plot(T,X(:,5),'LineWidth',1.2);
grid on;
legend({'Fabregas et. al.','Proposed'},'Location','east');
xlabel('t(s)');
ylabel('\omega(rad/s)');

figure(4);
d=sqrt((X(:,1)).^2+(X(:,2)).^2);
dc=sqrt((Xc(:,1)).^2+(Xc(:,2)).^2);
hold on;
plot(Tc,dc,'LineWidth',1.2);
plot(T,d,'LineWidth',1.2);
grid on;
legend({'Fabregas et. al.','Proposed'});
xlabel('t(s)');
ylabel('d(m)');

figure(5);
hold on;
plot(Tc,Xc(:,6),'LineWidth',1.2);
plot(T,X(:,6),'LineWidth',1.2);
grid on;
legend({'Fabregas et. al.','Proposed'},'Location','east');
xlabel('t(s)');
ylabel('s(m)');

figure(6);
hold on;
plot(Tc,180*Xc(:,8)/pi,'LineWidth',1.2);
plot(T,180*X(:,8)/pi,'LineWidth',1.2);
grid on;
legend({'Fabregas et. al.','Proposed'},'Location','east');
xlabel('t(s)');
ylabel('\theta_e(бу)');
