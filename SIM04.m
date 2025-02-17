clear;clc;

subplot(3,3,1)
hold on;
for k=0:0.08*pi:2*pi
    q0=[-1 -1 k]';
    out = sim('kinematics_track01',"StopTime","60");
    T=out.tout;
    X=out.yout;
    qe=X(:,8:9);
    d=qe.*qe;
    d=sqrt(d(:,1)+d(:,2));
    plot3(T,k*ones(length(T)),d,'Color',"#0072BD");
end
grid on;
view([1 -0.8 0.3]);

subplot(3,3,2)
hold on;
for k=0:0.08*pi:2*pi
    q0=[0 -1 k]';
    out = sim('kinematics_track01',"StopTime","60");
    T=out.tout;
    X=out.yout;
    qe=X(:,8:9);
    d=qe.*qe;
    d=sqrt(d(:,1)+d(:,2));
    plot3(T,k*ones(length(T)),d,'Color',"#0072BD");
end
grid on;
view([1 -0.8 0.3]);



subplot(3,3,3)
hold on;
for k=0:0.08*pi:2*pi
    q0=[1 -1 k]';
    out = sim('kinematics_track01',"StopTime","60");
    T=out.tout;
    X=out.yout;
    qe=X(:,8:9);
    d=qe.*qe;
    d=sqrt(d(:,1)+d(:,2));
    plot3(T,k*ones(length(T)),d,'Color',"#0072BD");
end
grid on;
view([1 -0.8 0.3]);



subplot(3,3,4)
hold on;
for k=0:0.08*pi:2*pi
    q0=[-1 0 k]';
    out = sim('kinematics_track01',"StopTime","60");
    T=out.tout;
    X=out.yout;
    qe=X(:,8:9);
    d=qe.*qe;
    d=sqrt(d(:,1)+d(:,2));
    plot3(T,k*ones(length(T)),d,'Color',"#0072BD");
end
grid on;
view([1 -0.8 0.3]);



subplot(3,3,5)
hold on;
for k=0:0.08*pi:2*pi
    q0=[0 0 k]';
    out = sim('kinematics_track01',"StopTime","60");
    T=out.tout;
    X=out.yout;
    qe=X(:,8:9);
    d=qe.*qe;
    d=sqrt(d(:,1)+d(:,2));
    plot3(T,k*ones(length(T)),d,'Color',"#0072BD");
end
grid on;
view([1 -0.8 0.3]);



subplot(3,3,6)
hold on;
for k=0:0.08*pi:2*pi
    q0=[1 0 k]';
    out = sim('kinematics_track01',"StopTime","60");
    T=out.tout;
    X=out.yout;
    qe=X(:,8:9);
    d=qe.*qe;
    d=sqrt(d(:,1)+d(:,2));
    plot3(T,k*ones(length(T)),d,'Color',"#0072BD");
end
grid on;
view([1 -0.8 0.3]);



subplot(3,3,7)
hold on;
for k=0:0.08*pi:2*pi
    q0=[-1 1 k]';
    out = sim('kinematics_track01',"StopTime","60");
    T=out.tout;
    X=out.yout;
    qe=X(:,8:9);
    d=qe.*qe;
    d=sqrt(d(:,1)+d(:,2));
    plot3(T,k*ones(length(T)),d,'Color',"#0072BD");
end
grid on;
view([1 -0.8 0.3]);



subplot(3,3,8)
hold on;
for k=0:0.08*pi:2*pi
    q0=[0 1 k]';
    out = sim('kinematics_track01',"StopTime","60");
    T=out.tout;
    X=out.yout;
    qe=X(:,8:9);
    d=qe.*qe;
    d=sqrt(d(:,1)+d(:,2));
    plot3(T,k*ones(length(T)),d,'Color',"#0072BD");
end
grid on;
view([1 -0.8 0.3]);



subplot(3,3,9)
hold on;
for k=0:0.08*pi:2*pi
    q0=[1 1 k]';
    out = sim('kinematics_track01',"StopTime","60");
    T=out.tout;
    X=out.yout;
    qe=X(:,8:9);
    d=qe.*qe;
    d=sqrt(d(:,1)+d(:,2));
    plot3(T,k*ones(length(T)),d,'Color',"#0072BD");
end
grid on;
view([1 -0.8 0.3]);

