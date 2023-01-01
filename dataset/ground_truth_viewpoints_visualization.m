clear variables;
close all;
clc;

load('pose_dataset.mat');
load('GT-Skel.mat');
% load('GT-Poly.mat');

pose_index = 2; % <--- Please set the pose index (from 1 to 25)

% Limb Information
L = [01,02;02,21;21,03;03,04;21,05;05,06;06,07;07,08;08,22;08,23;21,09;09,10;
     10,11;11,12;12,24;12,25;01,13;13,14;14,15;15,16;01,17;17,18;18,19;19,20];

figure();
% Visualization #1 - 3D human skeleton 
S = pose_dataset{pose_index,2};
scatter3(S(:,1),S(:,2),S(:,3), 'Marker', 'none'); hold on;
line([S(L(1,1),1) S(L(1,2),1)],[S(L(1,1),2) S(L(1,2),2)],[S(L(1,1),3) S(L(1,2),3)],'Color',[0/255 176/255 240/255], 'linewidth', 2);
line([S(L(2,1),1) S(L(2,2),1)],[S(L(2,1),2) S(L(2,2),2)],[S(L(2,1),3) S(L(2,2),3)],'Color',[0/255 176/255 240/255], 'linewidth', 2);
line([S(L(3,1),1) S(L(3,2),1)],[S(L(3,1),2) S(L(3,2),2)],[S(L(3,1),3) S(L(3,2),3)],'Color',[255/255 0/255 0/255], 'linewidth', 2);
line([S(L(4,1),1) S(L(4,2),1)],[S(L(4,1),2) S(L(4,2),2)],[S(L(4,1),3) S(L(4,2),3)],'Color',[255/255 0/255 0/255], 'linewidth', 2);
line([S(L(5,1),1) S(L(5,2),1)],[S(L(5,1),2) S(L(5,2),2)],[S(L(5,1),3) S(L(5,2),3)],'Color',[0/255 255/255 0/255], 'linewidth', 2);
line([S(L(6,1),1) S(L(6,2),1)],[S(L(6,1),2) S(L(6,2),2)],[S(L(6,1),3) S(L(6,2),3)],'Color',[0/255 255/255 0/255], 'linewidth', 2);
line([S(L(7,1),1) S(L(7,2),1)],[S(L(7,1),2) S(L(7,2),2)],[S(L(7,1),3) S(L(7,2),3)],'Color',[0/255 255/255 0/255], 'linewidth', 2);
line([S(L(8,1),1) S(L(8,2),1)],[S(L(8,1),2) S(L(8,2),2)],[S(L(8,1),3) S(L(8,2),3)],'Color',[0/255 255/255 0/255], 'linewidth', 2);
line([S(L(9,1),1) S(L(9,2),1)],[S(L(9,1),2) S(L(9,2),2)],[S(L(9,1),3) S(L(9,2),3)],'Color',[0/255 255/255 0/255], 'linewidth', 2);
line([S(L(10,1),1) S(L(10,2),1)],[S(L(10,1),2) S(L(10,2),2)],[S(L(10,1),3) S(L(10,2),3)],'Color',[0/255 255/255 0/255], 'linewidth', 2);
line([S(L(11,1),1) S(L(11,2),1)],[S(L(11,1),2) S(L(11,2),2)],[S(L(11,1),3) S(L(11,2),3)],'Color',[255/255 150/255 70/255], 'linewidth', 2);
line([S(L(12,1),1) S(L(12,2),1)],[S(L(12,1),2) S(L(12,2),2)],[S(L(12,1),3) S(L(12,2),3)],'Color',[255/255 150/255 70/255], 'linewidth', 2);
line([S(L(13,1),1) S(L(13,2),1)],[S(L(13,1),2) S(L(13,2),2)],[S(L(13,1),3) S(L(13,2),3)],'Color',[255/255 150/255 70/255], 'linewidth', 2);
line([S(L(14,1),1) S(L(14,2),1)],[S(L(14,1),2) S(L(14,2),2)],[S(L(14,1),3) S(L(14,2),3)],'Color',[255/255 150/255 70/255], 'linewidth', 2);
line([S(L(15,1),1) S(L(15,2),1)],[S(L(15,1),2) S(L(15,2),2)],[S(L(15,1),3) S(L(15,2),3)],'Color',[255/255 150/255 70/255], 'linewidth', 2);
line([S(L(16,1),1) S(L(16,2),1)],[S(L(16,1),2) S(L(16,2),2)],[S(L(16,1),3) S(L(16,2),3)],'Color',[255/255 150/255 70/255], 'linewidth', 2);
line([S(L(17,1),1) S(L(17,2),1)],[S(L(17,1),2) S(L(17,2),2)],[S(L(17,1),3) S(L(17,2),3)],'Color',[79/255 129/255 189/255], 'linewidth', 2);
line([S(L(18,1),1) S(L(18,2),1)],[S(L(18,1),2) S(L(18,2),2)],[S(L(18,1),3) S(L(18,2),3)],'Color',[79/255 129/255 189/255], 'linewidth', 2);
line([S(L(19,1),1) S(L(19,2),1)],[S(L(19,1),2) S(L(19,2),2)],[S(L(19,1),3) S(L(19,2),3)],'Color',[79/255 129/255 189/255], 'linewidth', 2);
line([S(L(20,1),1) S(L(20,2),1)],[S(L(20,1),2) S(L(20,2),2)],[S(L(20,1),3) S(L(20,2),3)],'Color',[79/255 129/255 189/255], 'linewidth', 2);
line([S(L(21,1),1) S(L(21,2),1)],[S(L(21,1),2) S(L(21,2),2)],[S(L(21,1),3) S(L(21,2),3)],'Color',[204/255 0/255 204/255], 'linewidth', 2);
line([S(L(22,1),1) S(L(22,2),1)],[S(L(22,1),2) S(L(22,2),2)],[S(L(22,1),3) S(L(22,2),3)],'Color',[204/255 0/255 204/255], 'linewidth', 2);
line([S(L(23,1),1) S(L(23,2),1)],[S(L(23,1),2) S(L(23,2),2)],[S(L(23,1),3) S(L(23,2),3)],'Color',[204/255 0/255 204/255], 'linewidth', 2);
line([S(L(24,1),1) S(L(24,2),1)],[S(L(24,1),2) S(L(24,2),2)],[S(L(24,1),3) S(L(24,2),3)],'Color',[204/255 0/255 204/255], 'linewidth', 2);
daspect([1 1 1]);

% Visualization #2 - Sphere
[x,y,z] = sphere(128);
r = 2.0; % radius of the sphere
h = surf(x*r, y*r, z*r - min(S(:,3))+0.05); hold on;
set(h,'FaceAlpha',0.1);
shading interp;
    
% Visualization #3 - Ground truth viewpoints
viewpoints = ground_truth_viewpoints{pose_index,2};
num_viewpoints = size(viewpoints,1);
array_x = viewpoints(:,1);
array_y = viewpoints(:,2);
array_z = viewpoints(:,3);
    
for i = 1:1:num_viewpoints
    unit_x(i,1) = r * array_x(i,1) / sqrt(array_x(i,1)^2 + array_y(i,1)^2 + array_z(i,1)^2);
    unit_y(i,1) = r * array_y(i,1) / sqrt(array_x(i,1)^2 + array_y(i,1)^2 + array_z(i,1)^2);
    unit_z(i,1) = r * array_z(i,1) / sqrt(array_x(i,1)^2 + array_y(i,1)^2 + array_z(i,1)^2);
end    
s = scatter3(unit_x,unit_y,unit_z); hold on;
set(s,'Marker','.','MarkerEdgeColor','k');
title(ground_truth_viewpoints{pose_index,1});
