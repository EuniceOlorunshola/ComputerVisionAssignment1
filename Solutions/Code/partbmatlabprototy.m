I = imread('/Users/euniceolorunshola/Desktop/Computer Vision/Homework 1/Checkerboard Pictures/IMG-1238.jpg'); % Read the image
imshow(I); % Display the image
[x, y] = ginput(2); % reads two points. x is a 2x1 column vector with x
%coordinates and y is a 2x1 column vector with y coordinates.

projetmatrix= [
    3 3 4 1 0 0 0 0 -753 -753 -1004 -251;
    0 0 0 0 3 3 4 1 -789 -789 -1052 -263;
    5 4 2 1 0 0 0 0 -1480 -1184 -592 -296;
    0 0 0 0 5 4 2 1 -1725 -1380 -690 -345;
    2 3 1 1 0 0 0 0 -512 -768 -256 -256;
    0 0 0 0 2 3 1 1 -526 -789 -263 -263;
    7 8 5 1 0 0 0 0 -2436 -2784 -1740 -348;
    0 0 0 0 7 8 5 1 -1841 -2104 -1315 -263;
    8 2 0 1 0 0 0 0 -3560 -890 0 -445;
    0 0 0 0 8 2 0 1 -2880 -720 0 -360;
    1 2 9 1 0 0 0 0 -236 -472 -2124 -236;
    0 0 0 0 1 2 9 1 -308 -616 -2772 -308;
    ];
projetmatrix_transpose = projetmatrix';
answer = projetmatrix * projetmatrix';
%[v,lamda] = eig(answer);
%[U,S,V] = svd(answer);
%Matrix = V(:,end);
%Matrix = reshape(Matrix,[],3)';
%[Q,Rotation] = qr(Matrix);

P = [
  -260 -240 1 0 0 0 -780 -720 -3;
  0 0 0 -260 -240 1 0 0 -3;
  -333 -334 1 0 0 0 -1665 -1336 -5;
  0 0 0 -333 -334 1 0 0 -4;
  -255 -180 1 0 0 0 -510 -540 -2;
  0 0 0 -255 -180 1 0 0 -3;
  -406 -384 1 0 0 0 -2842 -3072 -7;
  0 0 0 -406 -384 1 0 0 -8;
  0 0 0 0 0 0 0 0 1;
];
P_1 = [
  -390 -620 1 0 0 0 -390*8 -620*8 -8;
  0 0 0 -900 -620 1 -390*3 -620*3 -3;
  -250 -748 1 0 0 0 -250*5 -748*5 -5;
  0 0 0 -250 -748 1 -250*1 -748*1 -1;
  -522 -864 1 0 0 0 -522*7 -864*7 -7;
  0 0 0 -522 -864 1 -522*0 -864*0 0;
  -352 -958 1 0 0 0 -352*6 -958*6 -6;
  0 0 0 -352 -958 1 -352*3 -352*3 -3;
  0 0 0 0 0 0 0 0 1;
];
Homogenous = [0;0;0;0;0;0;0;0;1;];
[hn,hrms,hvet] = svd(P);
hmg = hvet(:,end);
hmg = reshape(hmg,[],3)';
[hv,hlambda] = eig(hmg);

size(P_1);

[hn1,hrms1,hvet1] = svd(P_1);
hmg_1 =hvet1(:,end);
hmg_1 = reshape(hmg_1,[],3)';
[hv1,hlamda1] = eig(hmg_1);
publish('partbmatlabprototy.m','pdf');