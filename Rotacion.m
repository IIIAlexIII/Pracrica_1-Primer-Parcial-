close all

angle_rad = gradoaradianes(90); %La variable "angle_rad" realiza la operacion con la funcion creada llamada "gradoaradianes"

for t = 0:0.01:angle_rad %Ciclo para realizar rotacion animada
    
    clf

line ([-10 10],[0 0],[0 0], 'color', [0 0 0], 'linewidth',1); %Establece el eje X Negro _'color' [R G B]_ 
line ([0 0],[-10 10],[0 0], 'color', [0 0 0], 'linewidth',1); %Establece el eje Y Negro _'color' [R G B]_ 

P0 = [0,0]; %[Punto_inicial, Punto_Final]
P1 = [6,0]; %[Punto_inicial, Punto_Final]
P2 = [6,3]; %[Punto_inicial, Punto_Final]
P3 = [0,3]; %[Punto_inicial, Punto_Final]

line ([P0(1) P1(1)],[P0(2) P1(2)],[0 0], 'color', [0 1 1], 'linewidth',3); %Establece el eje P0 a P1 - Amarillo _'color' [R G B]_ 
line ([P1(1) P2(1)],[P1(2) P2(2)],[0 0], 'color', [0 1 1], 'linewidth',3); %Establece el eje P1 a P2 - Amarillo _'color' [R G B]_
line ([P2(1) P3(1)],[P2(2) P3(2)],[0 0], 'color', [0 1 1], 'linewidth',3); %Establece el eje P2 a P3 - Amarillo _'color' [R G B]_ 
line ([P3(1) P0(1)],[P3(2) P0(2)],[0 0], 'color', [0 1 1], 'linewidth',3); %Establece el eje P3 a P0 - Amarillo _'color' [R G B]_

%line ([xi xf],[yi yf],[zi zf]);
%line ([Punto_inicial_en_X, Punto_Final_en_X],[Punto_inicial_en_Y, Punto_Final_en_Y],[Punto_inicial_en_Z, Punto_Final_en_Z]);

Rz = [cos(t) -sin(t); sin(t) cos(t)] %Matriz de rotación

P0r = Rz*P0'; %Operación para realizar la rotación
P1r = Rz*P1'; %Operación para realizar la rotación
P2r = Rz*P2'; %Operación para realizar la rotación
P3r = Rz*P3'; %Operación para realizar la rotación

line ([P0r(1) P1r(1)],[P0r(2) P1r(2)],[0 0], 'color', [1 0 1], 'linewidth',3); %Establece el eje P0 a P1 - Rosa _'color' [R G B]_ 
line ([P1r(1) P2r(1)],[P1r(2) P2r(2)],[0 0], 'color', [1 0 1], 'linewidth',3); %Establece el eje P1 a P2 - Rosa _'color' [R G B]_
line ([P2r(1) P3r(1)],[P2r(2) P3r(2)],[0 0], 'color', [1 0 1], 'linewidth',3); %Establece el eje P2 a P3 - Rosa _'color' [R G B]_ 
line ([P3r(1) P0r(1)],[P3r(2) P0r(2)],[0 0], 'color', [1 0 1], 'linewidth',3); %Establece el eje P3 a P0 - Rosa _'color' [R G B]_
%line ([xi xf],[yi yf],[zi zf]);
%line ([Punto_inicial_en_X, Punto_Final_en_X],[Punto_inicial_en_Y, Punto_Final_en_Y],[Punto_inicial_en_Z, Punto_Final_en_Z]);

pause (0.01)

end