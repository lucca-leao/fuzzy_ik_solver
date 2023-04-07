% Trabalho final de sistemas nebulosos
% Aluno: Lucca Garcia Leão

close all; 
clear all;
clc;

load ik_data.mat;
%% junta 1
options1 = genfisOptions('GridPartition'); 
options2 = genfisOptions('SubtractiveClustering');
options3 = genfisOptions('FCMClustering');
options1.NumMembershipFunctions = 2;

in_fis1_x = genfis(xt,ydt(:,1),options1);
in_fis2_x = genfis(xt,ydt(:,1),options2);
in_fis3_x = genfis(xt,ydt(:,1),options3);

options1 = anfisOptions;
options1.InitialFIS = in_fis1_x;
options1.EpochNumber = 40;
[out_fis1_x, erro_1_x] = anfis([xt ydt(:,1)],options1);

ys_anfis1_x=evalfis(out_fis1_x,xv);

options2 = anfisOptions;
options2.InitialFIS = in_fis2_x;
options2.EpochNumber = 40;
[out_fis2_x, erro_2_x] = anfis([xt ydt(:,1)],options2);

ys_anfis2_x=evalfis(out_fis2_x,xv);

options3 = anfisOptions;
options3.InitialFIS = in_fis3_x;
options3.EpochNumber = 40;
[out_fis3_x, erro_3_x] = anfis([xt ydt(:,1)],options3);

ys_anfis3_x=evalfis(out_fis3_x,xv);

errofis1_x = [];
errofis2_x = [];
errofis3_x = [];

for k = 1:length(xv)
     %erro(k) = erro + 100*abs((ys(k)-ydv(k))/(ys(k) + 1e-7));
     errofis1_x(k) = (ys_anfis1_x(k)-ydv(k,1))^2;
     errofis2_x(k) = (ys_anfis2_x(k)-ydv(k,1))^2;
     errofis3_x(k) = (ys_anfis3_x(k)-ydv(k,1))^2;
end
disp("Erro [%] - Função de ordem zero:");
merro1 = sum(errofis1_x)/length(errofis1_x)
merro2 = sum(errofis2_x)/length(errofis2_x)
merro3 = sum(errofis3_x)/length(errofis3_x)

%plot(xv,ydv,xv,ys_anfis);
%legend('Training Data','anfis Output');

%% junta 2
options1 = genfisOptions('GridPartition'); 
options2 = genfisOptions('SubtractiveClustering');
options3 = genfisOptions('FCMClustering');
options1.NumMembershipFunctions = 2;

in_fis1_y = genfis(xt,ydt(:,2),options1);
in_fis2_y = genfis(xt,ydt(:,2),options2);
in_fis3_y = genfis(xt,ydt(:,2),options3);

options1 = anfisOptions;
options1.InitialFIS = in_fis1_y;
options1.EpochNumber = 40;
[out_fis1_y, erro_1_y] = anfis([xt ydt(:,2)],options1);

ys_anfis1_y=evalfis(out_fis1_y,xv);

options2 = anfisOptions;
options2.InitialFIS = in_fis2_y;
options2.EpochNumber = 40;
[out_fis2_y, erro_2_y] = anfis([xt ydt(:,2)],options2);

ys_anfis2_y=evalfis(out_fis2_y,xv);

options3 = anfisOptions;
options3.InitialFIS = in_fis3_y;
options3.EpochNumber = 40;
[out_fis3_y, erro_3_y] = anfis([xt ydt(:,2)],options3);

ys_anfis3_y=evalfis(out_fis3_y,xv);

errofis1_y = [];
errofis2_y = [];
errofis3_y = [];

for k = 1:length(xv)
     %erro(k) = erro + 100*abs((ys(k)-ydv(k))/(ys(k) + 1e-7));
     errofis1_y(k) = (ys_anfis1_y(k)-ydv(k,2))^2;
     errofis2_y(k) = (ys_anfis2_y(k)-ydv(k,2))^2;
     errofis3_y(k) = (ys_anfis3_y(k)-ydv(k,2))^2;
end
disp("Erro [%] - Função de ordem zero:");
merro1_y = sum(errofis1_y)/length(errofis1_y)
merro2_y = sum(errofis2_y)/length(errofis2_y)
merro3_y = sum(errofis3_y)/length(errofis3_y)

%% junta 3
options1 = genfisOptions('GridPartition'); 
options2 = genfisOptions('SubtractiveClustering');
options3 = genfisOptions('FCMClustering');
options1.NumMembershipFunctions = 2;

in_fis1_3 = genfis(xt,ydt(:,3),options1);
in_fis2_3 = genfis(xt,ydt(:,3),options2);
in_fis3_3 = genfis(xt,ydt(:,3),options3);

options1 = anfisOptions;
options1.InitialFIS = in_fis1_3;
options1.EpochNumber = 40;
[out_fis1_3, erro_1_3] = anfis([xt ydt(:,3)],options1);

ys_anfis1_3=evalfis(out_fis1_3,xv);

options2 = anfisOptions;
options2.InitialFIS = in_fis2_3;
options2.EpochNumber = 40;
[out_fis2_3, erro_2_3] = anfis([xt ydt(:,3)],options2);

ys_anfis2_3=evalfis(out_fis2_3,xv);

options3 = anfisOptions;
options3.InitialFIS = in_fis3_3;
options3.EpochNumber = 40;
[out_fis3_3, erro_3_3] = anfis([xt ydt(:,3)],options3);

ys_anfis3_3=evalfis(out_fis3_3,xv);

errofis1_3 = [];
errofis2_3 = [];
errofis3_3 = [];

for k = 1:length(xv)
     %erro(k) = erro + 100*abs((ys(k)-ydv(k))/(ys(k) + 1e-7));
     errofis1_3(k) = (ys_anfis1_3(k)-ydv(k,3))^2;
     errofis2_3(k) = (ys_anfis2_3(k)-ydv(k,3))^2;
     errofis3_3(k) = (ys_anfis3_3(k)-ydv(k,3))^2;
end
disp("Erro [%] - Função de ordem zero:");
merro1_3 = sum(errofis1_3)/length(errofis1_3)
merro2_3 = sum(errofis2_3)/length(errofis2_3)
merro3_3 = sum(errofis3_3)/length(errofis3_3)


%%
figure
subplot(3,1,1);
histogram(errofis1_x);
title('Validação junta 1 - Grid Partition');
subplot(3,1,2);
histogram(errofis2_x);
title('Validação junta 1 - Subtractive Clustering');
subplot(3,1,3);
histogram(errofis3_x);
title('Validação junta 1 - FCM Clustering');

%%
figure
subplot(3,1,1);
histogram(errofis1_y);
title('Validação junta 2 - Grid Partition');
subplot(3,1,2);
histogram(errofis2_y);
title('Validação junta 2 - Subtractive Clustering');
subplot(3,1,3);
histogram(errofis3_y);
title('Validação junta 2 - FCM Clustering');

%%
figure
subplot(3,1,1);
histogram(errofis1_3);
title('Validação junta 3 - Grid Partition');
subplot(3,1,2);
histogram(errofis2_3);
title('Validação junta 3 - Subtractive Clustering');
subplot(3,1,3);
histogram(errofis3_3);
title('Validação junta 3 - FCM Clustering');

%% erro junta 1
figure
subplot(3,1,1);
plot(erro_1_x);
title('Validação junta 1 - Grid Partition');
subplot(3,1,2);
plot(erro_2_x);
title('Validação junta 1 - Subtractive Clustering');
subplot(3,1,3);
plot(erro_3_x);
title('Validação junta 1 - FCM Clustering');

%% erro junta 2
figure
subplot(3,1,1);
plot(erro_1_y);
title('Erro junta 2 - Grid Partition');
subplot(3,1,2);
plot(erro_2_y);
title('Erro junta 2 - Subtractive Clustering');
subplot(3,1,3);
plot(erro_3_y);
title('Erro junta 2 - FCM Clustering');

%% erro junta 3
figure
subplot(3,1,1);
plot(erro_1_3);
title('Erro junta 3 - Grid Partition');
subplot(3,1,2);
plot(erro_2_3);
title('Erro junta 3 - Subtractive Clustering');
subplot(3,1,3);
plot(erro_3_3);
title('Erro junta 3 - FCM Clustering');


%% Trajetória
angles = linspace(65,120);

x_traj = -0.2 + 2.5*cosd(angles);
y_traj = 0.3 + 2.5*sind(angles);
traj = [x_traj' y_traj'];
figure
scatter(xt(:,1),xt(:,2),'filled')
hold on
scatter(x_traj,y_traj,'filled')
title('Trajetória referência')
xlabel('X')
ylabel('Y')

%% Cinemática inversa estimada
theta1 = evalfis(out_fis1_x, traj);
theta2 = evalfis(out_fis1_y, traj);
theta3 = evalfis(out_fis1_3, traj);

Q = [theta1 theta2 theta3]
%criação do robô
mdl_planar3
xHist = [];
yHist = [];
for i = 1:100
   cur = fkine(p3,Q(i,:));
   pos = cur.t;
   xHist = [xHist pos(1)];
   yHist = [yHist pos(2)];
end
figure
pause
plot(p3,Q)
hold on
plot(x_traj, y_traj, 'LineWidth',2);
hold on
plot(xHist,yHist,'LineWidth',2);

%% Erro médio da trajetória
errorx = sum((x_traj-xHist).^2)/length(x_traj);
errory = sum((y_traj-yHist).^2)/length(y_traj);