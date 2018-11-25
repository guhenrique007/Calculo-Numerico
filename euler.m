
x_0 = 0;
y_0 = 3;
x_max = 2.5;
h = 0.5;
solucao_exata = [];
count = 0;

#euller:  y_n+1 = y_n + h * y_linha_n
fprintf('x_0: %d\n', x_0);
fprintf('Y_0: %d\n', y_0);
fprintf('calcular a exata no n=0: %d\n', solucao_exata);
X = 0;
Y = 3;

for i = 0:h:x_max 
  count = count +1;
  y_linha = EDO(X,Y);
  X = X + h;
  Y = Y + (h * y_linha);
  fprintf('x_: %d = %d\n', count,X);
  fprintf('y_: %d = %d\n', count,Y);
endfor
