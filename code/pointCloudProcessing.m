%% Obtaining point cloud data from 3D model
% Envisat model found from: 
%  https://sketchfab.com/3d-models/envisat-65b0ec49681a44f68dfc8bd4efe95839
% Converting fbx file above into xyz point cloud file
%   https://products.aspose.app/3d/point-cloud/fbx to convert

[n,w] = vrimport(which('ENVISAT.fbx.fbx'));
% view(w)

% YVETTE - will need to create own 3d model to scale!!!
xyzData = load('ENVISAT.fbx.xyz');
ptCloud = pointCloud(xyzData);
pcshow(ptCloud)
xlabel('X (m)');
ylabel('Y (m)');
zlabel('Z (m)');