%PARTE 2
ver control

H1 = tf([8 0],[4 6]);
H2 = tf(6,[1 5]);
H3 = tf([4 3],[3 5 0 1]);
H4 = tf(6,[7 1]);
H5 = tf([5 3],[5 1 0 4]);
H6 = tf([5 1],[1 6 0 5]);

H_A = parallel(H1,H2);

feedbackH3 = feedback(H3,1,+1);
H_B1 = parallel(H4,H5);
H_B2 = series(feedbackH3,H_B1)
H_B = series(H_B2,H6)

H_final = parallel(H_A,H_B)
graficar(H_final,'Respuesta escalon');


