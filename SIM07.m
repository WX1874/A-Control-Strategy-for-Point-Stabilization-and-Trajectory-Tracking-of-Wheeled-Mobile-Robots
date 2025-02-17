clear;clc;
q0=[-1;0;-pi/2];V0=[0;0];
out = sim('kinematics_track',"StopTime","60");
T=out.tout;
X=out.yout;
out = sim('dynamics_track',"StopTime","60");
Tc=out.tout;
Xc=out.yout;

da1=0.08;da2=0.04;r=1.5;

qe=X(:,8:9);
qec=Xc(:,8:9);
figure(1)
subplot(2,1,1);
hold on;
plot(Tc,qec(:,1),'LineWidth',1.2);
plot(T,qe(:,1),'--','LineWidth',1.2);
xlabel('t(s)');
ylabel('x_e(m)');
grid on;
legend({'Controller(56)','Controller(18)'},'Location','northeast');
subplot(2,1,2);
hold on;
plot(Tc,qec(:,2),'LineWidth',1.2);
plot(T,qe(:,2),'--','LineWidth',1.2);
xlabel('t(s)');
ylabel('y_e(m)');
grid on;
legend({'Controller(56)','Controller(18)'},'Location','northeast');

figure(4);
subplot(2,1,1);
hold on;
plot(Tc,Xc(:,4),'LineWidth',1.2);
plot(T,X(:,4),'--','LineWidth',1.2);
grid on;
legend({'Controller(56)','Controller(18)'});
xlabel('t(s)');
ylabel('v(m/s)');
subplot(2,1,2);
hold on;
plot(Tc,Xc(:,5),'LineWidth',1.2);
plot(T,X(:,5),'--','LineWidth',1.2);
grid on;
legend({'Controller(56)','Controller(18)'});
xlabel('t(s)');
ylabel('\omega(m/s)');
% print(gcf,'-djpeg','fig23','-r800');

