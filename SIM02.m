clear;clc;
hold on;
for j=3:-0.5:0.001
    for k=1:9
        the=0:2*pi/9:1.999*pi;
        q0=[j 0 the(k)]';s0=[0;0];
        out = sim('kinematics_point',"StopTime","100");
        T=out.tout;
        X=out.yout;
        plot3(T(1),sqrt((X(1,1)).^2+(X(1,2)).^2),X(1,8),'o','Color',"#D95319");
        plot3(T(end),sqrt((X(end,1)).^2+(X(end,2)).^2),X(end,8),'^','MarkerEdgeColor','k','MarkerFaceColor','k');
        plot3(T,sqrt((X(:,1)).^2+(X(:,2)).^2),X(:,8),'Color',"#0072BD");
    end
end
grid on;
legend({'Star','End'});
xlim([0,105]);
ylim([0,3.1]);
zlim([-1.1*pi,1.1*pi]);
view([1 -0.5 1]);
