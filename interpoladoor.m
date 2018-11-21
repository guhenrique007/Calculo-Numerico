grau = 3;

#Pontos
x = [-6, -4, 0, 4];
y = funcao(x);

p = polyfit(x, y, grau);

x1 = linspace(-8, 4);
y1 = polyval(p, x1);

#Pontos -> função 
y2 = funcao(x1);


#Pontos -> interpolação
plot(x, y, 'o', "color", "m");
hold on

#Função f
plot(x1, y2, "color", "g");

#Função interpoladora
plot(x1, y1, "color", "b");

#Atributos do gráfico
tmp_title = sprintf("Funcao interpoladora de grau %d\n", grau);
title (tmp_title);
xlabel ("x");
ylabel ("sin (x)");
legend ("Pontos", "f = 4*x.^2 - exp(x) - exp(-x);", "Função interpoladora da f(x)", "location", "northwest");
hold off

ponto = 1;
ponto_p = funcao(ponto)
ponto_i = polyval(p, ponto)
printf("Erro absoluto p/ funcao interpoladora de grau %d: %f\n", grau, abs(ponto_p - ponto_i));