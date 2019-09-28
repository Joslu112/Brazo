close all
clear all
clc                                     

prompt = 'Cuanto deseas rotar en grados con respecto la primera extremidad del brazo :\n';
theta2Deg = input(prompt);

prompt = 'Cuanto deseas rotar en grados con respecto la segunda extremidad del brazo :\n';
theta3Deg = input(prompt);

prompt = 'Cuanto deseas rotar en grados con respecto la tercera extremidad del brazo :\n';         
theta4Deg = input(prompt);

angulo2 = gradoaradianes(theta2Deg);
angulo3 = gradoaradianes(theta3Deg);
angulo4 = gradoaradianes(theta4Deg);

P0 = [0 ; 0 ; 0]; %[Punto_x; Punto_y; Punto_z]
L1 = 5;
L2 = 4;
L3 = 3;
L4 = 2;

Rz1 = [cos(0) -sin(0) 0 0;sin(0) cos(0) 0 0; 0 0 1 0;0 0 0 1];
Tx1 = [1 0 0 0;0 1 0 L1;0 0 1 0;0 0 0 1];
Tf1 = Rz1*Tx1;
P1  = Tf1(1:3,4);

brazo = [P0 P1];
imprimirbrazo(brazo,0.8,0.6,0.8);

Rz2 = [cos(0) -sin(0) 0 0;sin(0) cos(0) 0 0; 0 0 1 0;0 0 0 1];
Tx2 = [1 0 0 L2;0 1 0 0;0 0 1 0;0 0 0 1];
Tf2 = Rz2*Tx2;
T1 = Tf1*Tf2
P2 = T1(1:3,4);

brazo2 = [P1 P2];
imprimirbrazo2(brazo2,0.2,0.6,0.8);

Rz3 = [cos(0) -sin(0) 0 0;sin(0) cos(0) 0 0; 0 0 1 0;0 0 0 1];
Tx3 = [1 0 0 L3;0 1 0 0;0 0 1 0;0 0 0 1];
Tf3 = Rz3*Tx3;
T2 = T1*Tf3
P3 = T2(1:3,4);

brazo3 = [P2 P3];
imprimirbrazo3(brazo3,0.8,0.6,0.2);

Rz4 = [cos(0) -sin(0) 0 0;sin(0) cos(0) 0 0; 0 0 1 0;0 0 0 1];
Tx4 = [1 0 0 L4;0 1 0 0;0 0 1 0;0 0 0 1];
Tf4 = Rz4*Tx4;
T3 = T2*Tf4
P4 = T3(1:3,4);

brazo4 = [P3 P4];
imprimirbrazo4(brazo4,0.8,0.2,0.6);

V0x = Rz1(1:3,1);
V0y = Rz1(1:3,2);

V1x = P1+Tf1(1:3,1);
V1y = P1+Tf1(1:3,2);

V2x = P2+T1(1:3,1);
V2y = P2+T1(1:3,2);

V3x = P3+T2(1:3,1);
V3y = P3+T2(1:3,2);

V4x = P4+T3(1:3,1);
V4y = P4+T3(1:3,2);

line ([P0(1) V0x(1)],[P0(2) V0x(2)],[P0(2) V0x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P0(1) V0y(1)],[P0(2) V0y(2)],[P0(2) V0y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P1(1) V1x(1)],[P1(2) V1x(2)],[P1(2) V1x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P1(1) V1y(1)],[P1(2) V1y(2)],[P1(2) V1y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P2(1) V2x(1)],[P2(2) V2x(2)],[P2(2) V2x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P2(1) V2y(1)],[P2(2) V2y(2)],[P2(2) V2y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P3(1) V3x(1)],[P3(2) V3x(2)],[P3(2) V3x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P3(1) V3y(1)],[P3(2) V3y(2)],[P3(2) V3y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P4(1) V4x(1)],[P4(2) V4x(2)],[P4(2) V4x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P4(1) V4y(1)],[P4(2) V4y(2)],[P4(2) V4y(2)], 'color', [0 1 0], 'linewidth',1);

if angulo2 >= 0   
for b = 0 : 0.01 : angulo2
    clf
    imprimirejescoordenados();  
    
imprimirbrazo(brazo,0.2,0.4,0.7);

Rz2 = [cos(b) -sin(b) 0 0;sin(b) cos(b) 0 0; 0 0 1 0;0 0 0 1];
Tx2 = [1 0 0 L2;0 1 0 0;0 0 1 0;0 0 0 1];
Tf2 = Rz2*Tx2;
T1 = Tf1*Tf2
P2 = T1(1:3,4);

brazo2 = [P1 P2];
imprimirbrazo2(brazo2,0.2,0.6,0.8);

Rz3 = [cos(0) -sin(0) 0 0;sin(0) cos(0) 0 0; 0 0 1 0;0 0 0 1];
Tx3 = [1 0 0 L3;0 1 0 0;0 0 1 0;0 0 0 1];
Tf3 = Rz3*Tx3;
T2 = T1*Tf3
P3 = T2(1:3,4);

brazo3 = [P2 P3];
imprimirbrazo3(brazo3,0.8,0.6,0.2);

Rz4 = [cos(0) -sin(0) 0 0;sin(0) cos(0) 0 0; 0 0 1 0;0 0 0 1];
Tx4 = [1 0 0 L4;0 1 0 0;0 0 1 0;0 0 0 1];
Tf4 = Rz4*Tx4;
T3 = T2*Tf4
P4 = T3(1:3,4);

brazo4 = [P3 P4];
imprimirbrazo4(brazo4,0.8,0.2,0.6);

V2x = P2+T1(1:3,1);
V2y = P2+T1(1:3,2);

V3x = P3+T2(1:3,1);
V3y = P3+T2(1:3,2);

V4x = P4+T3(1:3,1);
V4y = P4+T3(1:3,2);

line ([P0(1) V0x(1)],[P0(2) V0x(2)],[P0(2) V0x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P0(1) V0y(1)],[P0(2) V0y(2)],[P0(2) V0y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P1(1) V1x(1)],[P1(2) V1x(2)],[P1(2) V1x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P1(1) V1y(1)],[P1(2) V1y(2)],[P1(2) V1y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P2(1) V2x(1)],[P2(2) V2x(2)],[P2(2) V2x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P2(1) V2y(1)],[P2(2) V2y(2)],[P2(2) V2y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P3(1) V3x(1)],[P3(2) V3x(2)],[P3(2) V3x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P3(1) V3y(1)],[P3(2) V3y(2)],[P3(2) V3y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P4(1) V4x(1)],[P4(2) V4x(2)],[P4(2) V4x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P4(1) V4y(1)],[P4(2) V4y(2)],[P4(2) V4y(2)], 'color', [0 1 0], 'linewidth',1);

pause(0.001)
end
else
    for b = 0 : -0.01 : angulo2
    clf
    imprimirejescoordenados();  
    
imprimirbrazo(brazo,0.8,0.6,0.8);

Rz2 = [cos(b) -sin(b) 0 0;sin(b) cos(b) 0 0; 0 0 1 0;0 0 0 1];
Tx2 = [1 0 0 L2;0 1 0 0;0 0 1 0;0 0 0 1];
Tf2 = Rz2*Tx2;
T1 = Tf1*Tf2
P2 = T1(1:3,4);

brazo2 = [P1 P2];
imprimirbrazo2(brazo2,0.2,0.6,0.8);

Rz3 = [cos(0) -sin(0) 0 0;sin(0) cos(0) 0 0; 0 0 1 0;0 0 0 1];
Tx3 = [1 0 0 L3;0 1 0 0;0 0 1 0;0 0 0 1];
Tf3 = Rz3*Tx3;
T2 = T1*Tf3
P3 = T2(1:3,4);

brazo3 = [P2 P3];
imprimirbrazo3(brazo3,0.8,0.6,0.2);

Rz4 = [cos(0) -sin(0) 0 0;sin(0) cos(0) 0 0; 0 0 1 0;0 0 0 1];
Tx4 = [1 0 0 L4;0 1 0 0;0 0 1 0;0 0 0 1];
Tf4 = Rz4*Tx4;
T3 = T2*Tf4
P4 = T3(1:3,4);

brazo4 = [P3 P4];
imprimirbrazo4(brazo4,0.8,0.2,0.6);

V2x = P2+T1(1:3,1);
V2y = P2+T1(1:3,2);

V3x = P3+T2(1:3,1);
V3y = P3+T2(1:3,2);

V4x = P4+T3(1:3,1);
V4y = P4+T3(1:3,2);

line ([P0(1) V0x(1)],[P0(2) V0x(2)],[P0(2) V0x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P0(1) V0y(1)],[P0(2) V0y(2)],[P0(2) V0y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P1(1) V1x(1)],[P1(2) V1x(2)],[P1(2) V1x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P1(1) V1y(1)],[P1(2) V1y(2)],[P1(2) V1y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P2(1) V2x(1)],[P2(2) V2x(2)],[P2(2) V2x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P2(1) V2y(1)],[P2(2) V2y(2)],[P2(2) V2y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P3(1) V3x(1)],[P3(2) V3x(2)],[P3(2) V3x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P3(1) V3y(1)],[P3(2) V3y(2)],[P3(2) V3y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P4(1) V4x(1)],[P4(2) V4x(2)],[P4(2) V4x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P4(1) V4y(1)],[P4(2) V4y(2)],[P4(2) V4y(2)], 'color', [0 1 0], 'linewidth',1);

pause(0.001)
    end
end

if angulo3 >= 0 
for c = 0 : 0.01 : angulo3
    clf
    imprimirejescoordenados();  
    
imprimirbrazo(brazo,0.8,0.6,0.8);

imprimirbrazo2(brazo2,0.2,0.6,0.8);

Rz3 = [cos(c) -sin(c) 0 0;sin(c) cos(c) 0 0; 0 0 1 0;0 0 0 1];
Tx3 = [1 0 0 L3;0 1 0 0;0 0 1 0;0 0 0 1];
Tf3 = Rz3*Tx3;
T2 = T1*Tf3
P3 = T2(1:3,4);

brazo3 = [P2 P3];
imprimirbrazo3(brazo3,0.8,0.6,0.2);

Rz4 = [cos(0) -sin(0) 0 0;sin(0) cos(0) 0 0; 0 0 1 0;0 0 0 1];
Tx4 = [1 0 0 L4;0 1 0 0;0 0 1 0;0 0 0 1];
Tf4 = Rz4*Tx4;
T3 = T2*Tf4
P4 = T3(1:3,4);

brazo4 = [P3 P4];
imprimirbrazo4(brazo4,0.8,0.2,0.6);

V3x = P3+T2(1:3,1);
V3y = P3+T2(1:3,2);

V4x = P4+T3(1:3,1);
V4y = P4+T3(1:3,2);

line ([P0(1) V0x(1)],[P0(2) V0x(2)],[P0(2) V0x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P0(1) V0y(1)],[P0(2) V0y(2)],[P0(2) V0y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P1(1) V1x(1)],[P1(2) V1x(2)],[P1(2) V1x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P1(1) V1y(1)],[P1(2) V1y(2)],[P1(2) V1y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P2(1) V2x(1)],[P2(2) V2x(2)],[P2(2) V2x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P2(1) V2y(1)],[P2(2) V2y(2)],[P2(2) V2y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P3(1) V3x(1)],[P3(2) V3x(2)],[P3(2) V3x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P3(1) V3y(1)],[P3(2) V3y(2)],[P3(2) V3y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P4(1) V4x(1)],[P4(2) V4x(2)],[P4(2) V4x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P4(1) V4y(1)],[P4(2) V4y(2)],[P4(2) V4y(2)], 'color', [0 1 0], 'linewidth',1);

pause(0.001)
end
else
    for c = 0 : -0.01 : angulo3
    clf
    imprimirejescoordenados();  
    
imprimirbrazo(brazo,0.8,0.6,0.8);

imprimirbrazo2(brazo2,0.2,0.6,0.8);

Rz3 = [cos(c) -sin(c) 0 0;sin(c) cos(c) 0 0; 0 0 1 0;0 0 0 1];
Tx3 = [1 0 0 L3;0 1 0 0;0 0 1 0;0 0 0 1];
Tf3 = Rz3*Tx3;
T2 = T1*Tf3
P3 = T2(1:3,4);

brazo3 = [P2 P3];
imprimirbrazo3(brazo3,0.8,0.6,0.2);

Rz4 = [cos(0) -sin(0) 0 0;sin(0) cos(0) 0 0; 0 0 1 0;0 0 0 1];
Tx4 = [1 0 0 L4;0 1 0 0;0 0 1 0;0 0 0 1];
Tf4 = Rz4*Tx4;
T3 = T2*Tf4
P4 = T3(1:3,4);

brazo4 = [P3 P4];
imprimirbrazo4(brazo4,0.8,0.2,0.6);

V3x = P3+T2(1:3,1);
V3y = P3+T2(1:3,2);

V4x = P4+T3(1:3,1);
V4y = P4+T3(1:3,2);

line ([P0(1) V0x(1)],[P0(2) V0x(2)],[P0(2) V0x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P0(1) V0y(1)],[P0(2) V0y(2)],[P0(2) V0y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P1(1) V1x(1)],[P1(2) V1x(2)],[P1(2) V1x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P1(1) V1y(1)],[P1(2) V1y(2)],[P1(2) V1y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P2(1) V2x(1)],[P2(2) V2x(2)],[P2(2) V2x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P2(1) V2y(1)],[P2(2) V2y(2)],[P2(2) V2y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P3(1) V3x(1)],[P3(2) V3x(2)],[P3(2) V3x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P3(1) V3y(1)],[P3(2) V3y(2)],[P3(2) V3y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P4(1) V4x(1)],[P4(2) V4x(2)],[P4(2) V4x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P4(1) V4y(1)],[P4(2) V4y(2)],[P4(2) V4y(2)], 'color', [0 1 0], 'linewidth',1);

pause(0.001)
    end
end

if angulo4 >= 0
for d = 0 : 0.01 : angulo4
    clf
    imprimirejescoordenados();  
    
imprimirbrazo(brazo,0.8,0.6,0.8);

imprimirbrazo2(brazo2,0.2,0.6,0.8);

imprimirbrazo3(brazo3,0.8,0.6,0.2);

Rz4 = [cos(d) -sin(d) 0 0;sin(d) cos(d) 0 0; 0 0 1 0;0 0 0 1];
Tx4 = [1 0 0 L4;0 1 0 0;0 0 1 0;0 0 0 1];
Tf4 = Rz4*Tx4;
T3 = T2*Tf4
P4 = T3(1:3,4);

brazo4 = [P3 P4];
imprimirbrazo4(brazo4,0.8,0.2,0.6);

V4x = P4+T3(1:3,1);
V4y = P4+T3(1:3,2);

line ([P0(1) V0x(1)],[P0(2) V0x(2)],[P0(2) V0x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P0(1) V0y(1)],[P0(2) V0y(2)],[P0(2) V0y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P1(1) V1x(1)],[P1(2) V1x(2)],[P1(2) V1x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P1(1) V1y(1)],[P1(2) V1y(2)],[P1(2) V1y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P2(1) V2x(1)],[P2(2) V2x(2)],[P2(2) V2x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P2(1) V2y(1)],[P2(2) V2y(2)],[P2(2) V2y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P3(1) V3x(1)],[P3(2) V3x(2)],[P3(2) V3x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P3(1) V3y(1)],[P3(2) V3y(2)],[P3(2) V3y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P4(1) V4x(1)],[P4(2) V4x(2)],[P4(2) V4x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P4(1) V4y(1)],[P4(2) V4y(2)],[P4(2) V4y(2)], 'color', [0 1 0], 'linewidth',1);

pause(0.001)
end
else
    for d = 0 : -0.01 : angulo4
    clf
    imprimirejescoordenados();  
    
imprimirbrazo(brazo,0.8,0.6,0.8);

imprimirbrazo2(brazo2,0.2,0.6,0.8);

imprimirbrazo3(brazo3,0.8,0.6,0.2);

Rz4 = [cos(d) -sin(d) 0 0;sin(d) cos(d) 0 0; 0 0 1 0;0 0 0 1];
Tx4 = [1 0 0 L4;0 1 0 0;0 0 1 0;0 0 0 1];
Tf4 = Rz4*Tx4;
T3 = T2*Tf4
P4 = T3(1:3,4);

brazo4 = [P3 P4];
imprimirbrazo4(brazo4,0.8,0.2,0.6);

V4x = P4+T3(1:3,1);
V4y = P4+T3(1:3,2);

line ([P0(1) V0x(1)],[P0(2) V0x(2)],[P0(2) V0x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P0(1) V0y(1)],[P0(2) V0y(2)],[P0(2) V0y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P1(1) V1x(1)],[P1(2) V1x(2)],[P1(2) V1x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P1(1) V1y(1)],[P1(2) V1y(2)],[P1(2) V1y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P2(1) V2x(1)],[P2(2) V2x(2)],[P2(2) V2x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P2(1) V2y(1)],[P2(2) V2y(2)],[P2(2) V2y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P3(1) V3x(1)],[P3(2) V3x(2)],[P3(2) V3x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P3(1) V3y(1)],[P3(2) V3y(2)],[P3(2) V3y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P4(1) V4x(1)],[P4(2) V4x(2)],[P4(2) V4x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P4(1) V4y(1)],[P4(2) V4y(2)],[P4(2) V4y(2)], 'color', [0 1 0], 'linewidth',1);

pause(0.001)
    end
end
