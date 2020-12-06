%PARTE 2
ver control

H_uno = tf(1,1);
H1 = tf([0 0 8 0],[0 0 4 6]);
H2 = tf([0 0 0 6],[0 0 1 5]);
H3 = tf([0 0 4 3],[3 5 0 1]);
H4 = tf([0 0 0 6],[0 0 7 1]);
H5 = tf([0 0 5 3],[5 1 0 4]);
H6 = tf([0 0 5 1],[1 6 0 5]);

H_A = parallel(H1,H2);
H_B1 = feedback(H3,H_uno,+1);
H_B2 = series(H_B1,H4);
H_B3 = series(H_B1,H5);
H_B4 = parallel(H_B2,H_B3);

H_B = series(H_B4,H6);
H_final = parallel(H_A,H_B)

graficar(H_final,"Respuesta escalon")


