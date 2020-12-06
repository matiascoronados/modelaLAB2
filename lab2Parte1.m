%PARTE 1
H1num = [8 0];
H1den = [6 2];
H1 = tf(H1num,H1den);

H2num = [5 7 4];
H2den = [1 6 3];
H2 = tf(H2num,H2den);

%Abierto para H1
figure(1)
graficar(H1,'Lazo Abierto H1');
[H1_ceros H1_polos H1_ganancia] = tf2zp(H1num,H1den)
H1_tmpEstab = stepinfo(H1).SettlingTime()

%Abierto para H2
figure(2)
graficar(H2,'Lazo Abierto H2');
[H2_ceros H2_polos H2_ganancia] = tf2zp(H2num,H2den)
H2_tmpEstab = stepinfo(H2).SettlingTime()

%Cerrado para H1
H1_feedback = feedback(H1,-1);
[H1Fnum H1Fden] = tfdata(H1_feedback, 'v');

figure(3)
graficar(H1_feedback,'Lazo Cerrado H1');
[H1F_ceros H1F_polos H1F_ganancia] = tf2zp(H1Fnum,H1Fden)
H1F_tmpEstab = stepinfo(H1_feedback).SettlingTime()

%Cerrado para H2
H2_feedback = feedback(H2,-1);
[H2Fnum H2Fden] = tfdata(H2_feedback, 'v');

figure(4)
graficar(H2_feedback,'Lazo Cerrado H2');
[H2F_ceros H2F_polos H2F_ganancia] = tf2zp(H2Fnum,H2Fden)
H2F_tmpEstab = stepinfo(H2_feedback).SettlingTime()





