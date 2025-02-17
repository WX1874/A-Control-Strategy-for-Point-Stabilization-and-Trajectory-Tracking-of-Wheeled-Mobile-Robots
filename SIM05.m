clc;clear;
q0=[2;1;2];
qr0=[3;2;1];
out = sim('kinematics_track_Vs');
T=out.tout;
X=out.yout;
out = sim('Song_et_al');
Tc=out.tout;
Xc=out.yout;

figure(2);
subplot(2,1,1)
hold on;
plot(Tc,Xc(:,4),'LineWidth',1.2);
plot(T,X(:,4),'LineWidth',1.2);
grid on;
legend({'Song et. al.','Proposed'});
xlabel('t(s)');
ylabel('v(m/s)');
subplot(2,1,2)
hold on;
plot(Tc,Xc(:,5),'LineWidth',1.2);
plot(T,X(:,5),'LineWidth',1.2);
grid on;
legend({'Song et. al.','Proposed'},'Location','east');
xlabel('t(s)');
ylabel('\omega(rad/s)');

figure(4);
subplot(2,1,1)
d=sqrt((X(:,6)).^2+(X(:,7)).^2);
dc=sqrt((Xc(:,6)).^2+(Xc(:,7)).^2);
hold on;
plot(Tc,dc,'LineWidth',1.2);
plot(T,d,'LineWidth',1.2);
grid on;
legend({'Song et. al.','Proposed'});
xlabel('t(s)');
ylabel('d(m)');
subplot(2,1,2)
hold on;
plot(Tc,Xc(:,14),'LineWidth',1.2);
plot(T,X(:,14),'LineWidth',1.2);
grid on;
legend({'Song et. al.','Proposed'},'Location','east');
xlabel('t(s)');
ylabel('s(m)');

figure(7);
subplot(2,1,1)
hold on;
plot(Tc,Xc(:,12),'LineWidth',1.2);
plot(T,X(:,12),'LineWidth',1.2);
grid on;
legend({'Song et. al.','Proposed'});
xlabel('t(s)');
ylabel('\Omega_r(rad/s)');
subplot(2,1,2)
hold on;
plot(Tc,Xc(:,13),'LineWidth',1.2);
plot(T,X(:,13),'LineWidth',1.2);
grid on;
legend({'Song et. al.','Proposed'});
xlabel('t(s)');
ylabel('\Omega_l(rad/s)');



