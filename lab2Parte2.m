ver control
%Se definen las funciones Hn
H_uno = tf(1,1);
H1 = tf([0 0 8 0],[0 0 4 6]);
H2 = tf([0 0 0 6],[0 0 1 5]);
H3 = tf([0 0 4 3],[3 5 0 1]);
H4 = tf([0 0 0 6],[0 0 7 1]);
H5 = tf([0 0 5 3],[5 1 0 4]);
H6 = tf([0 0 5 1],[1 6 0 5]);

%Para la conexion paralela entre H1 y H2
H_A = parallel(H1,H2);
%Para el feedback de H3
H_B1 = feedback(H3,H_uno,+1);
%Para la conexion en serie del feedback H3 y H4
H_B2 = series(H_B1,H4);
%Para la conexion en serie del feedback H3 y H5
H_B3 = series(H_B1,H5);
%Para la conexion paralela entre H_B2 y H_B3
H_B4 = parallel(H_B2,H_B3);
%Para la conexion en serie de H_B4 y H6
H_B = series(H_B4,H6);
%Para la conexion paralela de H_A y H_B
H_final = parallel(H_A,H_B)

%Para graficar la respuesta escalon final
graficar(H_final,"Respuesta escalon")


