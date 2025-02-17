clear;clc;
q0=[-0.8;0;pi];s0=[0;0];V0=[0;0];
out = sim('kinematics_point',"StopTime","40");
T=out.tout;
X=out.yout;
out = sim('dynamics_point',"StopTime","40");
Tc=out.tout;
Xc=out.yout;

figure(2);
subplot(2,1,1)
hold on;
plot(Tc,Xc(:,4),'LineWidth',1.2);
plot(T,X(:,4),'--','LineWidth',1.2);
grid on;
legend({'Controller(56)','Controller(18)'});
xlabel('t(s)');
ylabel('v(m/s)');
subplot(2,1,2)
hold on;
plot(Tc,Xc(:,5),'LineWidth',1.2);
plot(T,X(:,5),'--','LineWidth',1.2);
grid on;
legend({'Controller(56)','Controller(18)'},'Location','east');
xlabel('t(s)');
ylabel('\omega(rad/s)');

figure(7);
subplot(2,1,1)
hold on;
plot(Tc,-Xc(:,1),'LineWidth',1.2);
plot(T,-X(:,1),'--','LineWidth',1.2);
grid on;
legend({'Controller(56)','Controller(18)'},'Location','east');
xlabel('t(s)');
ylabel('x_e(m)');
subplot(2,1,2)
hold on;
plot(Tc,-Xc(:,2),'LineWidth',1.2);
plot(T,-X(:,2),'--','LineWidth',1.2);
grid on;
legend({'Controller(56)','Controller(18)'},'Location','east');
xlabel('t(s)');
ylabel('y_e(m)');
