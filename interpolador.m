grau = 3;

#pontos x,y
x = [-6, -4, 0, 4];
y = funcao(x); #funcao encontra-se no arquivo 'funcao.m'

p = polyfit(x, y, grau);

x1 = linspace(-8, 4);
y1 = polyval(p, x1);

#pontos -> função 
y2 = funcao(x1);


#pontos -> interpolação
plot(x, y, 'o', "color", "m");
hold on

#função f
plot(x1, y2, "color", "g");

#função interpoladora
plot(x1, y1, "color", "b");

#atributos do gráfico
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
