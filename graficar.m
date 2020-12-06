function [] = graficar(H,titulo)
step(H)
title(titulo)
grid on
xlabel('Tiempo[s]')
ylabel('Amplitud')
end

