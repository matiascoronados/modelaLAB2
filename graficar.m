function [] = graficar(H,titulo)
plot(step(H))
title(titulo)
grid on
xlabel('Tiempo[s]')
ylabel('Amplitud')
end

