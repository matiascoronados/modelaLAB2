%PARTE 2
ver control

%funcion de transferencia
s = tf('s');

H1 = 8*s/(4*s+6);
H2 = 6/(s+5);
H3 = (4*s+3)/(3*s^3+5*s^2+1);
H4 = 6/(7*s+1);
H5 = (5*s+3)/(5*s^3+s^2+4);
H6 = (5*s+1)/(s^3+6*s^2+5);

H_A = H1;
H_B = H2;

feedbackH3 = feedback(H3,+1)
H_C1 = feedbackH3 * H4
H_C2 = feedbackH3 * H5
H_C3 = H_C1 + H_C2
H_C = H_C3 * H6

H_final = H_A + H_B + H_C;

%Escalon
graficar(H_final,'Diagrama final');
