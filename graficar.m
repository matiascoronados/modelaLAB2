function [] = graficar(H,titulo)
plot(step(H))
title(titulo)
grid on
xlabel('Amplitud')
ylabel('Tiempo')
end

