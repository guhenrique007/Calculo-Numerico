
x_0 = 0;
y_0 = 3;
x_max = 2.5;
h = 0.1;
solucao_exata = [];
count = 0;

#euller:  y_n+1 = y_n + h * y_linha_n
fprintf('x_0: %d\n', x_0);
fprintf('Y_0: %d\n', y_0);
fprintf('calcular a exata no n=0: %d\n', solucao_exata);
X = 0;
Y = 3;
x_array = [];
y_array = [];

for i = 0:h:x_max
  count = count +1;
  y_linha = EDO(X,Y);
  X = X + h;
  Y = Y + (h * y_linha);
  fprintf('x_%d = %d  ------------  y_%d = %d\n', count,X,count,Y);
  x_array = [X x_array];
  y_array = [Y y_array];
 

  #calcular a exata aqui
  solucao_exata = [y_linha solucao_exata];
 
endfor

#Gráfico
plot(y_array,"color","b");
hold on
  
plot(x_array,"color","g");
hold on
  
plot(solucao_exata,"color","y");
